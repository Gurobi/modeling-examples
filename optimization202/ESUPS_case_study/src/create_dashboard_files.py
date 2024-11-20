import pandas as pd

from src.analysis import AnalysisParameters, Analyzer
from src.dashboard_utils.dashboard_files import (
    calc_exisiting_stock_df,
    create_disaster_totals,
    create_priority_change,
    create_province_assess_df,
    item_stock_assess,
    reallocation_dashboard_files,
)
from src.dashboard_utils.dashboard_utils import get_scenario
from src.dashboard_utils.dashboard_value_objects import (
    BalMetricsDashboard,
    ItemProvinceAssessDF,
    ProvinceAssessDF,
    ProvinceLookupDF,
)
from src.dashboard_utils.dauls_utils import calc_duals_by_warehouse
from src.path import DASHBOARD_OUTPUT_PATH, DATA_DIR
from src.reading import CsvProblemReader

COUNTRY = "Vanuatu"

# Run optimization
reader = CsvProblemReader()
dataset = reader.read(DATA_DIR / COUNTRY)
parameters = AnalysisParameters()
analyzer = Analyzer(parameters)
result = analyzer.run_all(dataset)


### ExisitingStockAssessDF dashboard file
exisiting_stock_df = calc_exisiting_stock_df(dataset, country=COUNTRY)


### Priority Change dashboard file
priority_change_df = create_priority_change(result, country=COUNTRY)


all_duals_df = pd.DataFrame()
for key, value in result.items():
    scenario = get_scenario(key)

    if scenario != "actual":
        continue

    duals_df = calc_duals_by_warehouse(value)
    all_duals_df = pd.concat([all_duals_df, duals_df], ignore_index=True)


### ProvinceAssessDF dashboard file
provinces_df = pd.read_csv(DATA_DIR / COUNTRY / "province_lookup.csv")
provinces_df: pd.DataFrame = ProvinceLookupDF.validate(provinces_df)
province_assess_df: pd.DataFrame = create_province_assess_df(
    all_duals_df,
    provinces_df,
    COUNTRY,
)

### WhStockAssessDF dashboard file
duals_df_copy = all_duals_df.copy()
wh_stock_assess: pd.DataFrame = item_stock_assess(duals_df_copy, provinces_df, COUNTRY)


### Reallocation dashboard file
reallocation_df, single_warehouse_df = reallocation_dashboard_files(
    wh_stock_assess.copy(),
    result,
    COUNTRY,
    wh_stock_assess=wh_stock_assess,
)

### Disaster totals dashboard file
dis_totals_df = create_disaster_totals(dataset, COUNTRY)


### Save dashboard files

if not (DASHBOARD_OUTPUT_PATH / COUNTRY).exists():
    (DASHBOARD_OUTPUT_PATH / COUNTRY).mkdir(parents=True)

exisiting_stock_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "exisiting_stock.csv",
    index=False,
)

priority_change_df = priority_change_df.loc[
    priority_change_df[BalMetricsDashboard.run_pct] == "actual"
]
priority_change_df = priority_change_df.drop(columns=[BalMetricsDashboard.run_pct])
priority_change_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "priority_change.csv",
    index=False,
)

province_assess_df = province_assess_df.drop(columns=[ProvinceAssessDF.time])
province_assess_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "province_assess.csv",
    index=False,
)

dec_wh_stock_assess = wh_stock_assess.drop(columns=[ItemProvinceAssessDF.time_hms])
dec_wh_stock_assess.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "wh_stock_assess_as_decimal.csv",
    index=False,
)
wh_stock_assess = wh_stock_assess.drop(columns=[ItemProvinceAssessDF.time_hms])
wh_stock_assess.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "wh_stock_assess.csv",
    index=False,
)

reallocation_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "reallocation.csv",
    index=False,
)
single_warehouse_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "single_warehouse.csv",
    index=False,
)

dis_totals_df.to_csv(
    DASHBOARD_OUTPUT_PATH / COUNTRY / "disaster_totals.csv",
    index=False,
)
