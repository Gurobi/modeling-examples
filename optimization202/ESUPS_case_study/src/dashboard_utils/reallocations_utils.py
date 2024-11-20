"""Functions relating to the reallocation dashboard files."""

from collections.abc import Generator
from pathlib import Path

import numpy as np
import pandas as pd
from pandera.typing import DataFrame
from tqdm import tqdm

from src.dashboard_utils.dashboard_utils import invert_rank, large, rankdata
from src.dashboard_utils.dashboard_value_objects import (
    Admin1ActualInvDF,
    ItemProvinceAssessDF,
    OptimalStockDF,
    ReallocationOptionsDF,
    SingleWarehouseMoveDF,
)


def create_admin1_act_inv(
    starting_inv_path: Path,
    admin1_lookup: dict[str, str],
) -> DataFrame[Admin1ActualInvDF]:
    """Create the admin1 actual inventory dataframe.

    Args:
        starting_inv_path: The path to the starting inventory file.
        admin1_lookup: A dictionary of the warehouse id and the admin 1.

    Returns:
        The admin1 actual inventory dataframe.

    """
    starting_inventory = pd.read_csv(starting_inv_path)

    starting_inventory[Admin1ActualInvDF.location] = starting_inventory[
        "gglAddress"
    ].apply(lambda x: admin1_lookup[x.split(",")[0]])

    starting_inventory = (
        starting_inventory.groupby([Admin1ActualInvDF.location, "ItemName"])["Total"]
        .sum()
        .reset_index()
    )
    starting_inventory = starting_inventory.rename(
        columns={
            "ItemName": Admin1ActualInvDF.item,
            "Total": Admin1ActualInvDF.actual_stock_lvl,
        },
    )

    _ = Admin1ActualInvDF.validate(starting_inventory)
    return starting_inventory


def create_starting_stock_lkup(
    all_inv_df: DataFrame[OptimalStockDF],
) -> dict[tuple[str, str], int]:
    """For each location and item in `all_inv_df` determine the actual inventory levels.

    Args:
        all_inv_df: Dataframe which has actual stock levels for each item and
        location.

    Returns:
        A dictionary with the location and item as the key and the actual stock
        level as the value.

    """

    actual_inv = all_inv_df.copy()
    actual_inv = actual_inv.loc[actual_inv[OptimalStockDF.percentile] == "actual"]
    inventory_lkup = actual_inv.groupby([OptimalStockDF.location, OptimalStockDF.item])[
        OptimalStockDF.optimal_stock
    ].unique()

    same_lvls = inventory_lkup.apply(len)
    assert not all(
        same_lvls > 1,
    ), "Some location item combinations have different starting inventories"

    return inventory_lkup.apply(lambda x: x[0]).to_dict()


def find_current_stocks(
    item: str,
    location: str,
    starting_inventory: dict[tuple[str, str], int],
) -> pd.Series:
    """Find the current stock levels for an item in each area.

    Args:
        item: The item to find stocks for
        location: The location to find stocks for
        starting_inventory: A dictionary with the location and item as the key and
        the actual stock level as the value.

    Returns:
        Series: Index is location and then value is stock value
    """

    actual_level = starting_inventory.get((location, item), None)

    if actual_level is None:
        err_msg = f"Location {location} and item {item} not found in starting inventory"
        raise ValueError(err_msg)

    return actual_level


def single_warehouse_move_to(
    item: str,
    user_percentage: int,
    item_percentile_lvl_df: pd.DataFrame,
    country: str,
) -> DataFrame[SingleWarehouseMoveDF]:
    """For a given item and user percentage, for each location rank the amount
    of extra/needed stock and the amount of extra/needed stock.

    Args:
        item: The item of interest
        user_percentage: Percentage of diasters to cover
        item_percentile_lvl_df: Dataframe with the optimal/actual stock levels for
        each item and location.
        country: The country the results are for.

    Returns:
        DataFrame: Returns dataframe with all this information as columns
    """

    percentile_stock_opt_levels = item_percentile_lvl_df.loc[
        item_percentile_lvl_df[SingleWarehouseMoveDF.item] == item
    ].copy()

    percentile_stock_opt_levels = percentile_stock_opt_levels.set_index(
        SingleWarehouseMoveDF.location,
    )

    # Find the ideal stock levels based on the user percentage
    percentile_stock_opt_levels[
        SingleWarehouseMoveDF.ideal_stock
    ] = percentile_stock_opt_levels[user_percentage]

    # Calc if there is extra or required stock
    percentile_stock_opt_levels[SingleWarehouseMoveDF.extra_stock] = np.maximum(
        percentile_stock_opt_levels[SingleWarehouseMoveDF.actual_stock_lvl]
        - percentile_stock_opt_levels[SingleWarehouseMoveDF.ideal_stock],
        0,
    )
    percentile_stock_opt_levels[SingleWarehouseMoveDF.required_stock] = np.maximum(
        percentile_stock_opt_levels[SingleWarehouseMoveDF.ideal_stock]
        - percentile_stock_opt_levels[SingleWarehouseMoveDF.actual_stock_lvl],
        0,
    )

    # Rank the extra/needed stock
    percentile_stock_opt_levels[SingleWarehouseMoveDF.rank_extra_stock] = rankdata(
        percentile_stock_opt_levels[SingleWarehouseMoveDF.extra_stock],
        method="dense",
    )
    percentile_stock_opt_levels[SingleWarehouseMoveDF.rank_extra_stock] = invert_rank(
        list(percentile_stock_opt_levels[SingleWarehouseMoveDF.rank_extra_stock]),
    )
    percentile_stock_opt_levels[SingleWarehouseMoveDF.rank_required_stock] = rankdata(
        percentile_stock_opt_levels[SingleWarehouseMoveDF.required_stock],
        method="dense",
    )
    percentile_stock_opt_levels[
        SingleWarehouseMoveDF.rank_required_stock
    ] = invert_rank(
        list(percentile_stock_opt_levels[SingleWarehouseMoveDF.rank_required_stock]),
    )
    percentile_stock_opt_levels = percentile_stock_opt_levels.reset_index()
    percentile_stock_opt_levels[SingleWarehouseMoveDF.country] = country

    _ = SingleWarehouseMoveDF.validate(percentile_stock_opt_levels)
    return percentile_stock_opt_levels


def move_to_from_location(k: int, extra: bool, item_stock_df: DataFrame) -> pd.Series:
    """For a given rank of extra/needed stock find the warehouse log cluster and the
    amount of stock for that rank.

    I.e if k = 1 and extra = True then find the warehouse log cluster
    with the highest extra stock and the amount of extra stock based off item_stock_df.


    Args:
        k: The rank of the extra/needed stock i.e calculate for highest ranked
        extra: Determines whether calculating for extra items or for needed items
        item_stock_df: The dataframe containing the extra/needed stock for an item

    Returns:
        Series: Empty series if no extra/needed stock, otherwise returns the warehouse
        log cluster and stock levels
    """

    # Determine if calculating for extra or needed stock
    extra_or_needed = (
        SingleWarehouseMoveDF.extra_stock
        if extra
        else SingleWarehouseMoveDF.required_stock
    )

    # Find the kth largest extra/needed stock amount
    kth_largest = large(list(item_stock_df[extra_or_needed]), k)

    if kth_largest == 0:
        return pd.Series(dtype="float64")

    # If there is extra/needed stock return the warehouse log cluster and the amount
    # of stock
    # In case of more than one with same value will take first index one
    move_idx = list(item_stock_df[extra_or_needed]).index(kth_largest)
    return item_stock_df.loc[move_idx][
        [
            SingleWarehouseMoveDF.location,
            SingleWarehouseMoveDF.actual_stock_lvl,
            extra_or_needed,
        ]
    ]


def reallocation_option_loop(
    scenario_combos: Generator[tuple[str, str, str, bool, int]],
    num_scenarios: int,
    item_percentile_lvl_df: pd.DataFrame,
    geo_wh_stock: DataFrame[ItemProvinceAssessDF],
    country: str,
) -> tuple[DataFrame[ReallocationOptionsDF], DataFrame[SingleWarehouseMoveDF]]:
    """Create the reallocation and single warehouse move from dataframes.


    Loops over all combinations and calaculates the reallocation options and single
    warehouse move from dataframes.

    Args:
        scenario_combos: The scenario combinations.
        num_scenarios: The number of scenarios.
        item_percentile_lvl_df: The item percentile level dataframe.
        geo_wh_stock: The geo warehouse stock dataframe.
        country: The country the results are for.

    Returns:
        A tuple containing the reallocation options and single warehouse move from
        dataframes.

    """
    reallocation_options = pd.DataFrame()
    single_warehouse_move_from = pd.DataFrame()
    geo_wh_stock = geo_wh_stock.drop(columns=[ItemProvinceAssessDF.country])

    for location, item, disaster_coverage, move, rank in tqdm(
        scenario_combos,
        total=num_scenarios,
        desc="Progress",
    ):
        # Determine optimum stock levels for the item at the disaster coverage level at
        # each warehouse log cluster
        percentile_stock_opt_levels = single_warehouse_move_to(
            item,
            disaster_coverage,
            item_percentile_lvl_df=item_percentile_lvl_df,
            country=country,
        )

        # Determine the location to move stock to/from based for given rank
        other_loc_and_stock = move_to_from_location(
            rank,
            move,
            percentile_stock_opt_levels,
        )

        # Not all combinations have reallocation options this is mainly the case
        # when we want to move extra stock as there often isn't extra stock in all or
        # even any locations
        if other_loc_and_stock.empty:
            continue

        other_location = other_loc_and_stock[OptimalStockDF.location]

        # If we are moving stock from this location to the other location
        if move:
            time_cost_savings = (
                geo_wh_stock.loc[other_location, item]
                - geo_wh_stock.loc[location, item]
            )

        # Else we are moving stock from the other location to this location
        else:
            time_cost_savings = (
                geo_wh_stock.loc[location, item]
                - geo_wh_stock.loc[other_location, item]
            )

        current_reallocation = pd.DataFrame(
            [pd.concat([other_loc_and_stock, time_cost_savings])],
        )
        current_reallocation = current_reallocation.rename(
            columns={
                SingleWarehouseMoveDF.extra_stock: ReallocationOptionsDF.extra_or_needed_stock,  # noqa: E501
                SingleWarehouseMoveDF.required_stock: ReallocationOptionsDF.extra_or_needed_stock,  # noqa: E501
            },
        )

        current_reallocation[ReallocationOptionsDF.move_from] = move
        current_reallocation[ReallocationOptionsDF.user_location] = location
        current_reallocation[ReallocationOptionsDF.scenario] = disaster_coverage
        current_reallocation[ReallocationOptionsDF.item] = item
        percentile_stock_opt_levels[SingleWarehouseMoveDF.item] = item

        reallocation_options = pd.concat([reallocation_options, current_reallocation])
        single_warehouse_move_from = pd.concat(
            [single_warehouse_move_from, percentile_stock_opt_levels],
            ignore_index=True,
        )

    return reallocation_options, single_warehouse_move_from
