"""Functions relating to calculating duals by warehouse for the dashboard files."""

import pandas as pd
import pandera.typing as pat

from src.analysis import Analysis, SolverObjective
from src.dashboard_utils.dashboard_value_objects import DualsByWharehouseDF
from src.solving import AllocationStrategy

OBJECTIVE_STR_MAP = {
    SolverObjective.Cost: "cost",
    SolverObjective.Time: "time",
    SolverObjective.Distance: "distance",
}


def _calc_normalized_shadow_price(row: pd.Series) -> float:
    """Calculate the normalized shadow price for a row in the duals_by_warehouse df."""
    if row[DualsByWharehouseDF.objective] == OBJECTIVE_STR_MAP[SolverObjective.Cost]:
        return row[DualsByWharehouseDF.raw_dual] - row["MeanCost"]

    return (row[DualsByWharehouseDF.raw_dual] - row["MeanTime"]) / 24


def create_mean_duals(duals_df: pat.DataFrame[DualsByWharehouseDF]) -> pd.DataFrame:
    """Create a dataframe of the mean duals for each item type and objective.

    Args:
        duals_df: The dataframe containing the duals by warehouse

    Returns:
        A dataframe of the mean duals for each item type and objective.

    """
    mean_raw_duals = (
        duals_df.groupby(
            [DualsByWharehouseDF.item_type, DualsByWharehouseDF.objective],
        )[DualsByWharehouseDF.raw_dual]
        .agg("mean")
        .reset_index()
    )
    mean_raw_duals = mean_raw_duals.pivot_table(
        index=DualsByWharehouseDF.item_type,
        columns=DualsByWharehouseDF.objective,
        values=DualsByWharehouseDF.raw_dual,
    )
    mean_raw_duals = mean_raw_duals.rename(
        columns={SolverObjective.Cost: "MeanCost", SolverObjective.Time: "MeanTime"},
    )
    return mean_raw_duals.reset_index()


def add_normalized_shadow_price(
    duals_df: pat.DataFrame[DualsByWharehouseDF],
    mean_duals_df: pd.DataFrame,
) -> pd.DataFrame:
    """Add the normalized shadow price to the duals dataframe.

    Args:
        duals_df: The dataframe containing the duals by warehouse
        mean_duals_df: The dataframe containing the mean duals for each item type and
        objective.

    Returns:
        The duals dataframe with the normalized shadow price added.

    """

    duals_df_copy = duals_df.copy()
    duals_df_copy = duals_df_copy.merge(
        mean_duals_df,
        on=DualsByWharehouseDF.item_type,
    )
    duals_df_copy[DualsByWharehouseDF.objective] = duals_df_copy[
        DualsByWharehouseDF.objective
    ].map(OBJECTIVE_STR_MAP)

    duals_df_copy["NormalizedShadowPrice"] = duals_df_copy.apply(
        _calc_normalized_shadow_price,
        axis=1,
    )

    return duals_df_copy


def calc_duals_by_warehouse(result: Analysis) -> pat.DataFrame[DualsByWharehouseDF]:
    """Creates a `DualsByWharehouseDF` dataframe for the time and cost objectives
    of a given `Analysis` result.

    Args:
        result: The analysis result

    Returns:
        A dataframe of raw duals by warehouse for the time and cost objectives for
        the item and scenario.

    """
    item = result.item.id
    solution = result.solutions

    cost_solution = solution[
        (SolverObjective.Cost, AllocationStrategy.MinimizeFixedInventory)
    ]
    time_solution = solution[
        (SolverObjective.Time, AllocationStrategy.MinimizeFixedInventory)
    ]
    cost_duals = cost_solution.duals_inventory_exc_dummy_unadjusted
    time_duals = time_solution.duals_inventory_exc_dummy_unadjusted

    # Get the depots as str rather than `Depot` object
    cost_depot_ids = [depot.id for depot in cost_duals]
    time_depot_ids = [depot.id for depot in time_duals]

    # Get duals for cost and time objectives
    cost_duals_df = pd.DataFrame(
        dict(
            item_type=item,
            objective=SolverObjective.Cost,
            raw_dual=cost_duals.values(),
            warehouse_id=cost_depot_ids,
        ),
    )
    time_duals_df = pd.DataFrame(
        dict(
            item_type=item,
            objective=SolverObjective.Time,
            raw_dual=time_duals.values(),
            warehouse_id=time_depot_ids,
        ),
    )

    duals_df = pd.concat([cost_duals_df, time_duals_df], ignore_index=True)
    duals_df = duals_df.reset_index(drop=True)

    return DualsByWharehouseDF.validate(duals_df)
