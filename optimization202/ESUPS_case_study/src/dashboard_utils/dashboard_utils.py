import re
from collections.abc import Iterable
from itertools import product

import numpy as np
import pandas as pd
import pandera.typing as pat
from pandera import DataFrameModel
from scipy import interpolate
from scipy.stats import rankdata

from src.analysis import Analysis
from src.dashboard_utils.dashboard_value_objects import (
    BalMetricsDashboard,
    DualsByWharehouseDF,
    ProvinceLookupDF,
)
from src.data import Dataset, Item


def to_hms(fraction: float) -> str:
    """Takes in a fraction of a day an converts to hh:mm:ss.

    Args:
        fraction: Fraction of a day i.e 0.2 is 20% of a day

    Returns:
        str: String representing hours, minutes, seconds
    """
    negative = False
    if fraction < 0:
        fraction = fraction * -1
        negative = True

    as_hours = 24 * fraction
    hours = int(as_hours)
    minutes = (as_hours * 60) % 60
    seconds = (as_hours * 3600) % 60

    if negative:
        return "-%d:%02d:%02d" % (hours, minutes, seconds)

    return "%d:%02d:%02d" % (hours, minutes, seconds)


def quantile_exc(ser: Iterable[float], quantile: float) -> float:
    """Python implemenation of Excels PERCENTILE.EXC. Refer to
    Microsoft documentation for more details.

    Args:
        ser: Series of values to calculate quantile from
        quantile: Quantile to calculate

    Returns:
        float: Value for specified quantile
    """

    ser_sorted = np.sort(np.array(ser))
    rank = quantile * (len(ser) + 1) - 1
    assert rank > 0, "quantile is too small"
    rank_l = int(rank)
    return ser_sorted[rank_l] + (ser_sorted[rank_l + 1] - ser_sorted[rank_l]) * (
        rank - rank_l
    )


def percentile_rank_exc(x: Iterable[float], number: int) -> float:
    """Python implementation of excel function PERCENTRANK.EXC.
    Refer to Microsoft documentation for more details.

    Args:
        x: Iterable of floats to cacl precent rank from
        number: Number to use to calc percent rank from array

    Returns:
        float: Percent rank excl covered
    """
    y = [(sum(pd.Series(x) < i) + 1) / (len(x) + 1) for i in x]
    f = interpolate.interp1d(x, y)
    return float(f(number))


def large(array: Iterable[int], k: int) -> float:
    """Python implementation of excels LARGE function, returns kth largest value
    in array, if empty array or asking for kth value which is <= 0 or greater than
    number of data points return 0.

    Args:
        array (Iterable[int]): Iterable with numbers to find kth largest
        k (int): Kth largest value to find

    Returns:
        float: Kth largest value or 0
    """

    if k > len(array) or k <= 0:
        return 0
    array.sort()
    try:
        return array[len(array) - k]
    except IndexError:
        return 0


def invert_rank(org_ranks: Iterable[int]) -> list[int]:
    """Inverts the rank of a list of integers, i.e. 1 becomes the largest."""
    num_distinct_ranks = max(org_ranks)
    inverted = num_distinct_ranks + 1 - rankdata(org_ranks, method="dense")
    return inverted.astype(int).tolist()


def order_by_schema(df: pd.DataFrame, schema: DataFrameModel) -> pd.DataFrame:
    """Order the dataframe by the provided schema."""

    schema_order = list(schema.to_schema().columns.keys())
    return df[schema_order]


def get_scenario(key: tuple[str, Item]) -> str:
    """Get the scenario from the result key."""
    scenario = key[0]
    return scenario.split(".csv")[0]


def get_scenario_from_str(scenario: str) -> str:
    """Get the scenario from the result key."""
    pattern = r"\d\d"
    match = re.search(pattern, scenario)
    if match:
        return match.group(0)
    return "actual"


def determine_run_pcnt(file_name: str) -> str:
    """Given the file name determine what inventory scenario it is for.
    E.g acutal_65pct.csv -> 65pct.
    """

    match = re.search(r"_([\d]+)pct\.csv", file_name)
    if match:
        return match.group(1)
    return "actual"


def calc_bal_metric(run_pct: str, result: Analysis) -> pd.DataFrame:
    """Calculate the bal metric for the given run pct and result."""

    current_bal_df = result.balance_metric.copy()
    current_bal_df = current_bal_df.reset_index()
    current_bal_df = current_bal_df[["objective", "balanceMetric"]]
    current_bal_df[BalMetricsDashboard.item] = result.item
    current_bal_df[BalMetricsDashboard.run_pct] = run_pct
    return current_bal_df


def map_warehouse_province(
    province_df: pat.DataFrame[ProvinceLookupDF],
    duals_df: pd.DataFrame,
) -> pd.Series:
    """Map the warehouse id to province."""
    province_lookup = province_df.set_index(
        ProvinceLookupDF.warehouse_id,
    ).to_dict()[ProvinceLookupDF.province]

    # Split out the warehouse id and map to province
    return (
        duals_df[DualsByWharehouseDF.warehouse_id]
        .str.split(",", expand=True)[0]
        .map(province_lookup)
    )


def frac_disaster_covered(
    people_served: int,
    disaster_sizes: Iterable[int],
) -> float:
    """Calculate the fraction of the disaster covered by the current inventory."""

    disaster_sizes = np.sort(disaster_sizes)

    if people_served < min(disaster_sizes):
        return 0
    if people_served > max(disaster_sizes):
        return 1
    return round(percentile_rank_exc(disaster_sizes, people_served), 2)


def get_actual_inventory(dataset: Dataset) -> dict[str, int]:
    """Get the recommended inventory levels for each item at different percentiles."""

    inv_results = {}
    actual_inv = {item.id: 0 for item in dataset.items}
    actual = dataset.inventory_scenarios["actual.csv"]
    for key, value in actual.items():
        item = key[1].id
        actual_inv[item] += value
    scenario_formatted = get_scenario_from_str("actual.csv")
    inv_results[scenario_formatted] = actual_inv
    return inv_results


def enough_stock(
    item: str,
    scenario: float,
    exisiting_stock: dict[str, int],
    recommended_level_stock: dict[float, int],
) -> bool:
    """Determine if there is enough stock for the given item and scenario."""
    return exisiting_stock[item] >= recommended_level_stock[scenario][item]


def calc_increase_stock_pct(
    item: str,
    scenario: float,
    current_levels: dict[str, int],
    recommended_levels: dict[float, int],
) -> float:
    """Calculate the increase stock percentage for the given item and scenario."""

    recommended = recommended_levels[scenario][item]
    current = current_levels[item]

    if current == 0:
        return np.inf
    pct_change = round((recommended - current) / current, 2)
    return max(pct_change, 0) * 100


def create_scenario_combo(
    user_location: Iterable[str],
    items: Iterable[str],
) -> Iterable[tuple[str, str, str, bool, int]]:
    """Create the scenario combinations.

    The combinations are of all the user locations, items, disaster coverage levels,
    move from and rank options. The disaster coverage levels the move from and
    rank options are fixed.

    Args:
        user_location: The user locations.
        items: The items.

    Returns:
        The scenario combinations.

    """

    percentage_disasters_cover = [50, 55, 60, 65, 70, 75, 80, 85, 90, 95]
    percentage_disasters_cover = [str(i) for i in percentage_disasters_cover]
    move_from = [False, True]
    rank = list(range(1, 5))

    return product(user_location, items, percentage_disasters_cover, move_from, rank)
