from itertools import product

import numpy as np
import pandas as pd
import pandera.typing as pat

from src.analysis import Analysis, SolverObjective
from src.dashboard_utils.dashboard_utils import (
    calc_bal_metric,
    calc_increase_stock_pct,
    create_scenario_combo,
    determine_run_pcnt,
    enough_stock,
    frac_disaster_covered,
    get_actual_inventory,
    get_scenario_from_str,
    map_warehouse_province,
    order_by_schema,
    quantile_exc,
    to_hms,
)
from src.dashboard_utils.dashboard_value_objects import (
    BalMetricsDashboard,
    DisasterTotals,
    DualsByWharehouseDF,
    ExisitingStockAssessDF,
    ExistingStockInfo,
    ItemProvinceAssessDF,
    OptimalStockDF,
    ProvinceAssessDF,
    ProvinceLookupDF,
    ReallocationOptionsDF,
    SingleWarehouseMoveDF,
)
from src.dashboard_utils.dauls_utils import (
    OBJECTIVE_STR_MAP,
    add_normalized_shadow_price,
    create_mean_duals,
)
from src.dashboard_utils.reallocations_utils import (
    create_admin1_act_inv,
    reallocation_option_loop,
)
from src.data import Dataset, Item
from src.path import DATA_DIR
from src.solving import AllocationStrategy


def create_optimal_stock_df(
    opt_results: dict[tuple[str, Item], Analysis],
    admin1_lookup: dict[str, str],
) -> pat.DataFrame[OptimalStockDF]:
    """Create the optimal stock dataframe for the given set of results.


    For each item and location and scenario determines what the optimal stock level
    is.

    Args:
        opt_results: A dictionary of results from the analysis. The key is a tuple of
        the scenario and item. The value is the analysis result.
        admin1_lookup: A dictionary of the warehouse id and the admin 1.

    Returns:
        A dataframe of the optimal stock for each item and location and scenario.

    """
    all_opt_inv_data = []
    for key, value in opt_results.items():
        scenario = get_scenario_from_str(key[0])

        if scenario == "actual":
            continue

        item = key[1].id

        solution = value.solutions[
            SolverObjective.Cost,
            AllocationStrategy.MinimizeTwoStage,
        ]
        optimal_inventory = solution.optimal_inventory

        for warehouse, stock in optimal_inventory.items():
            warehouse_id = warehouse.id.split(",")[0]
            location = admin1_lookup[warehouse_id]

            all_opt_inv_data.append(
                {
                    OptimalStockDF.item: item,
                    OptimalStockDF.percentile: scenario,
                    OptimalStockDF.warehouse_id: warehouse_id,
                    OptimalStockDF.optimal_stock: stock,
                    OptimalStockDF.location: location,
                },
            )

    all_opt_inv_df = pd.DataFrame(all_opt_inv_data)
    _ = OptimalStockDF.validate(all_opt_inv_df)
    return all_opt_inv_df


def calc_exisiting_stock_df(
    dataset: Dataset,
    country: str,
) -> pat.DataFrame[ExisitingStockAssessDF]:
    """Calculate the existing stock dataframe.

    Args:
        dataset: The dataset.
        country: The country the analysis is for.

    Returns:
        The existing stock dataframe.

    """

    exisiting_info = calc_exisiting_stock_info(dataset)

    # Format data for df
    df_start = [
        (key[0], key[1], value)
        for key, value in exisiting_info.increase_stock_pct.items()
    ]
    exisiting_stock_df = pd.DataFrame(
        df_start,
        columns=[
            ExisitingStockAssessDF.item,
            ExisitingStockAssessDF.scenario,
            ExisitingStockAssessDF.increase_stock_pct,
        ],
    )

    # Map item to required info for the df
    exisiting_stock_df[ExisitingStockAssessDF.ppl_served_per_item] = exisiting_stock_df[
        ExisitingStockAssessDF.item
    ].map(exisiting_info.ppl_served_per_item)
    exisiting_stock_df[
        ExisitingStockAssessDF.frac_disaster_covered
    ] = exisiting_stock_df[ExisitingStockAssessDF.item].map(
        exisiting_info.frac_disaster_covered,
    )
    exisiting_stock_df[
        ExisitingStockAssessDF.ppl_served_exisiting
    ] = exisiting_stock_df[ExisitingStockAssessDF.item].map(
        exisiting_info.ppl_served_exisiting,
    )
    exisiting_stock_df[ExisitingStockAssessDF.ppl_affected] = exisiting_stock_df[
        ExisitingStockAssessDF.scenario
    ].map(exisiting_info.scenario_disaster_size)

    # Calculate additional columns for df
    exisiting_stock_df[ExisitingStockAssessDF.enough_stock] = exisiting_stock_df.apply(
        lambda row: exisiting_info.enough_stock[
            (row[ExisitingStockAssessDF.item], row[ExisitingStockAssessDF.scenario])
        ],
        axis=1,
    )
    exisiting_stock_df[
        ExisitingStockAssessDF.recommended_stock
    ] = exisiting_stock_df.apply(
        lambda row: exisiting_info.recommended_stock[
            row[ExisitingStockAssessDF.scenario]
        ][row[ExisitingStockAssessDF.item]],
        axis=1,
    )
    exisiting_stock_df[ExisitingStockAssessDF.exisiting_inventory] = exisiting_stock_df[
        ExisitingStockAssessDF.item
    ].map(exisiting_info.initial_stock)

    exisiting_stock_df[ExisitingStockAssessDF.country] = country

    _ = ExisitingStockAssessDF.validate(exisiting_stock_df)

    return order_by_schema(exisiting_stock_df, ExisitingStockAssessDF)


def calc_exisiting_stock_info(dataset: Dataset) -> ExistingStockInfo:
    """Calculate the required info which is used to create the existing stock df.

    Args:
        dataset: The dataset.

    Returns:
        The required info to create the existing stock df.

    """

    items = [item.id for item in dataset.items]

    # Get the recommended inventory levels for each item at different percentiles
    recommended_stock = get_actual_inventory(dataset)
    initial_stock = recommended_stock.pop("actual")

    # Get the people served by the existing inventory
    ppl_per_item = {
        key[1].id: value for key, value in dataset.persons_per_item_general.items()
    }
    ppl_served_exisiting = {
        item: int(ppl_per_item[item] * initial_stock[item]) for item in items
    }

    scenarios = [get_scenario_from_str(i) for i in dataset.inventory_scenarios]
    scenarios = [int(i) / 100 for i in scenarios if i != "actual"]

    # Get the disaster sizes for each scenario
    disaster_affected = dataset.disaster_affected_totals
    disaster_sizes = [
        quantile_exc(list(disaster_affected.values()), scenario)
        for scenario in scenarios
    ]
    disaster_sizes = np.round(disaster_sizes, 0)
    scenario_disaster_sizes = dict(zip(scenarios, disaster_sizes, strict=True))

    # Get recommended stock for each scenario
    recommended_stock = {}
    for scenario in scenarios:
        recommended_stock[scenario] = {
            item: round(scenario_disaster_sizes[scenario] / ppl_per_item[item], 0)
            for item in items
        }

    # Get the fraction of the disaster covered by the existing inventory
    frac_disaster_cov = {
        item: frac_disaster_covered(
            ppl_served_exisiting[item],
            list(disaster_affected.values()),
        )
        for item in items
    }

    enough_stock_lkup = {}
    increase_stock_recommendations = {}
    for item, scenario in product(items, scenarios):
        enough_stock_lkup[(item, scenario)] = enough_stock(
            item,
            scenario,
            initial_stock,
            recommended_stock,
        )

        increase_stock_recommendations[(item, scenario)] = calc_increase_stock_pct(
            item,
            scenario,
            initial_stock,
            recommended_stock,
        )

    return ExistingStockInfo(
        recommended_stock=recommended_stock,
        initial_stock=initial_stock,
        ppl_served_per_item=ppl_per_item,
        scenario_disaster_size=scenario_disaster_sizes,
        frac_disaster_covered=frac_disaster_cov,
        enough_stock=enough_stock_lkup,
        increase_stock_pct=increase_stock_recommendations,
        ppl_served_exisiting=ppl_served_exisiting,
    )


def create_province_assess_df(
    duals_warehouse_df: pat.DataFrame[DualsByWharehouseDF],
    province_lookup_df: pat.DataFrame[ProvinceLookupDF],
    country: str,
) -> pat.DataFrame[ProvinceAssessDF]:
    """Creates a dataframe of the province assessment dashboard file.

    Args:
        duals_warehouse_df: The dataframe containing the duals by warehouse
        province_lookup_df: The dataframe containing the warehouse province lookup
        country: The country the analysis is for.

    Returns:
        A dataframe of the province assessment dashboard file.

    """

    duals_df_copy = duals_warehouse_df.copy()
    mean_raw_duals = create_mean_duals(duals_df_copy)
    duals_df_copy = add_normalized_shadow_price(duals_df_copy, mean_raw_duals)

    # Split out the warehouse id and map to province
    duals_df_copy[ProvinceAssessDF.province] = map_warehouse_province(
        province_lookup_df,
        duals_df_copy,
    )

    # Calculate the mean normalized shadow price for each province
    geo_province = duals_df_copy.groupby(
        [DualsByWharehouseDF.objective, ProvinceAssessDF.province],
    )["NormalizedShadowPrice"].agg("mean")

    geo_province_df = pd.DataFrame(geo_province).reset_index()
    geo_province_df = geo_province_df.pivot_table(
        index=ProvinceAssessDF.province,
        columns=DualsByWharehouseDF.objective,
        values="NormalizedShadowPrice",
    ).reset_index()

    geo_province_df[ProvinceAssessDF.time_hms] = geo_province_df[
        ProvinceAssessDF.time
    ].apply(to_hms)

    geo_province_df[ProvinceAssessDF.country] = country

    _ = ProvinceAssessDF.validate(geo_province_df)
    return order_by_schema(geo_province_df, ProvinceAssessDF)


def create_priority_change(
    result: dict[tuple[str, Item], Analysis],
    country: str,
) -> pat.DataFrame[BalMetricsDashboard]:
    """Create the balance metric dataframe for the given set of results.

    Args:
        result: A dictionary of results from the analysis. The key is a tuple of
        the scenario and item. The value is the analysis result.
        country: The country the analysis is for.

    Returns:
        A dataframe of the balance metric for each item and scenario.

    """

    balance_metric_dfs = []
    for key, value in result.items():
        run_pct = determine_run_pcnt(key[0])
        balance_metric_dfs.append(calc_bal_metric(run_pct, value))

    balance_metrics = pd.concat(balance_metric_dfs, ignore_index=True)

    balance_metrics[BalMetricsDashboard.item] = balance_metrics[
        BalMetricsDashboard.item
    ].apply(lambda item: item.id)
    balance_metrics["objective"] = balance_metrics["objective"].apply(
        lambda x: OBJECTIVE_STR_MAP[x],
    )

    balance_metrics = balance_metrics.pivot_table(
        index=[BalMetricsDashboard.item, BalMetricsDashboard.run_pct],
        columns="objective",
        values="balanceMetric",
    ).reset_index()

    balance_metrics[BalMetricsDashboard.grand_total] = (
        balance_metrics[BalMetricsDashboard.cost]
        + balance_metrics[BalMetricsDashboard.time]
    )
    balance_metrics.columns.name = None
    balance_metrics[BalMetricsDashboard.country] = country
    _ = BalMetricsDashboard.validate(balance_metrics)
    return order_by_schema(balance_metrics, BalMetricsDashboard)


def item_stock_assess(
    duals_wharehouse_df: pd.DataFrame,
    province_lookup_df: pat.DataFrame[ProvinceLookupDF],
    country: str,
) -> pat.DataFrame[ItemProvinceAssessDF]:
    """Calculates the cost and time savings for each province for all items for time
    and cost objectives.

    Args:
        duals_wharehouse_df: The dataframe containing the duals by warehouse
        province_lookup_df: The dataframe containing the warehouse province lookup
        country: The country the analysis is for.

    Returns:
        Dataframe containing cost/time for all items and provinces.

    """
    item_stock_assess_df: pd.DataFrame = duals_wharehouse_df.groupby(
        DualsByWharehouseDF.item_type,
    ).apply(
        create_province_assess_df,
        province_lookup_df=province_lookup_df,
        country=country,
    )

    # Handle multi-index
    item_stock_assess_df = item_stock_assess_df.reset_index(
        level=DualsByWharehouseDF.item_type,
    ).reset_index(drop=True)

    item_stock_assess_df[ItemProvinceAssessDF.country] = country
    _ = ItemProvinceAssessDF.validate(item_stock_assess_df)
    return order_by_schema(item_stock_assess_df, ItemProvinceAssessDF)


def reallocation_dashboard_files(
    geo_wh_stock_df: pat.DataFrame[ItemProvinceAssessDF],
    opt_result: dict[tuple[str, Item], Analysis],
    country: str,
    wh_stock_assess: pat.DataFrame[ItemProvinceAssessDF],
) -> tuple[pat.DataFrame[ReallocationOptionsDF], pat.DataFrame[SingleWarehouseMoveDF]]:
    """Create the reallocation and single warehouse move from dataframes.

    Args:
        geo_wh_stock_df: The geo warehouse stock dataframe.
        opt_result: The results from the optimization.
        country: The country the analysis if for.
        wh_stock_assess: The warehouse stock assessment dataframe.

    Returns:
        A tuple containing the reallocation options and single warehouse move from
        dataframes.

    """
    provinces_df = pd.read_csv(DATA_DIR / country / "province_lookup.csv")
    provinces_df: pd.DataFrame = ProvinceLookupDF.validate(provinces_df)
    admin1_lookup = provinces_df.set_index(ProvinceLookupDF.warehouse_id).to_dict()[
        ProvinceLookupDF.province
    ]

    # Get optimal stock levels
    all_opt_inv_df = create_optimal_stock_df(opt_result, admin1_lookup)

    starting_inventory = create_admin1_act_inv(
        DATA_DIR / country / "inventory" / "actual.csv",
        admin1_lookup,
    )

    item_percentile_lvl_df = (
        all_opt_inv_df.groupby(
            [OptimalStockDF.location, OptimalStockDF.percentile, OptimalStockDF.item],
        )[OptimalStockDF.optimal_stock]
        .sum()
        .reset_index()
    )
    item_percentile_lvl_df = item_percentile_lvl_df.pivot_table(
        index=[OptimalStockDF.location, OptimalStockDF.item],
        columns=OptimalStockDF.percentile,
        values=OptimalStockDF.optimal_stock,
    ).reset_index()

    item_percentile_lvl_df = item_percentile_lvl_df.merge(
        starting_inventory,
        on=[OptimalStockDF.location, OptimalStockDF.item],
        how="left",
    ).fillna(0)

    # Create scenario combinations
    user_location = all_opt_inv_df[OptimalStockDF.location].unique()
    items = wh_stock_assess[ItemProvinceAssessDF.item_type].unique()
    scenario_combinations = create_scenario_combo(user_location, items)
    num_scenarios = len(list(create_scenario_combo(user_location, items)))

    geo_wh_stock_df = geo_wh_stock_df.set_index(
        [ItemProvinceAssessDF.province, ItemProvinceAssessDF.item_type],
    )
    geo_wh_stock_df = geo_wh_stock_df.drop(columns=[ItemProvinceAssessDF.time_hms])

    reallocation_options_df, single_warehouse_df = reallocation_option_loop(
        scenario_combinations,
        num_scenarios,
        item_percentile_lvl_df,
        geo_wh_stock_df,
        country=country,
    )

    reallocation_options_df[ReallocationOptionsDF.scenario] = reallocation_options_df[
        ReallocationOptionsDF.scenario
    ].astype(np.int64)

    reallocation_options_df[ReallocationOptionsDF.country] = country

    ord_reallocation_df = order_by_schema(
        reallocation_options_df,
        ReallocationOptionsDF,
    )

    single_warehouse_df = single_warehouse_df.drop_duplicates()
    ord_reallocation_df[ReallocationOptionsDF.time] = ord_reallocation_df[
        ReallocationOptionsDF.time
    ].apply(to_hms)

    ord_reallocation_df[ReallocationOptionsDF.move_from] = ord_reallocation_df[
        ReallocationOptionsDF.move_from
    ].apply(
        lambda x: "Extra" if x else "Needed",
    )

    _ = ReallocationOptionsDF.validate(ord_reallocation_df)
    _ = SingleWarehouseMoveDF.validate(single_warehouse_df)

    return ord_reallocation_df, single_warehouse_df


def create_disaster_totals(
    dataset: Dataset,
    country: str,
) -> pat.DataFrame[DisasterTotals]:
    """Create the disaster totals dataframe for a given country.

    Args:
        dataset: The dataset.
        country: The country the analysis is for.

    Returns:
        The disaster totals dataframe.

    """
    totals_df = pd.DataFrame.from_dict(dataset.disaster_affected_totals, orient="index")
    totals_df = totals_df.reset_index()
    totals_df[DisasterTotals.country] = country
    totals_df = totals_df.rename(
        columns={"index": DisasterTotals.disaster_id, 0: DisasterTotals.total_affected},
    )

    totals_df = totals_df.sort_values(by=DisasterTotals.total_affected)

    _ = DisasterTotals.validate(totals_df)
    return totals_df
