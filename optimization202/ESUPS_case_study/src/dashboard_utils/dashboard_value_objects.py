import pandera as pa
from pandera import DataFrameModel, Field
from pandera.typing import Series
from pydantic import BaseModel
from typing_extensions import Self

from src.analysis import SolverObjective


class ExistingStockInfo(BaseModel):
    """Existing stock information.

    Attributes:
        recommended_stock: The recommended stock.
        initial_stock: The initial stock.
        ppl_served_per_item: The people served per item.
        scenario_disaster_size: The scenario disaster size.
        frac_disaster_covered: The fraction of the disaster covered.
        increase_stock_pct: The increase stock percentage.
        enough_stock: Whether there is enough stock.
        ppl_served_exisiting: The people served by the existing stock.

    """

    recommended_stock: dict[float, dict[str, int]]
    initial_stock: dict[str, int]
    ppl_served_per_item: dict[str, float]
    scenario_disaster_size: dict[float, float]
    frac_disaster_covered: dict[str, float]
    increase_stock_pct: dict[tuple[str, float], float]
    enough_stock: dict[tuple[str, float], bool]
    ppl_served_exisiting: dict[str, int]


class DualsByWharehouseDF(DataFrameModel):
    """Duals by wharehouse dataframe value object.

    Attributes:
        item_type: The item type
        objCostType: The objective cost type (Time or Cost)
        rawDual: The raw dual
        warehouseID: The warehouse ID

    """

    class Config:
        """Pandera configuration."""

        strict = True

    item_type: Series[str]
    objective: Series[int]
    raw_dual: Series[float] = Field(coerce=True)
    warehouse_id: Series[str]

    @pa.check("objective")
    @classmethod
    def check_objective(cls: type[Self], objectives: Series[int]) -> Series[bool]:
        """Check that the objective is either 0 or 1."""

        valid_values = list(SolverObjective)
        return objectives.isin(valid_values)


class BalMetricsDashboard(DataFrameModel):
    """A dataframe model for the balance metrics dashboard.

    Attributes:
        item: The item
        run_pct: The run percentage
        cost: The cost savings
        time: The time savings
        grand_total: The grand total
        country: The country the results are for.


    """

    class Config:
        """Pandera configuration."""

        strict = True

    item: Series[str]
    run_pct: Series[str]
    cost: Series[float] = Field(ge=0)
    time: Series[float] = Field(ge=0)
    grand_total: Series[float] = Field(ge=0)
    country: Series[str]


class ProvinceAssessDF(DataFrameModel):
    """A dataframe model for the province assessment dashboard file.

    Attributes:
        province: The province.
        cost: The cost savings
        time: The time savings
        time_hms: The time savings in hours, minutes, seconds
        country: The country the results are for.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    province: Series[str]
    cost: Series[float]
    time: Series[float]
    time_hms: Series[str]
    country: Series[str]


class ItemProvinceAssessDF(DataFrameModel):
    """A dataframe model for the item province assessment dashboard file."""

    class Config:
        """Pandera configuration."""

        strict = True

    province: Series[str]
    cost: Series[float]
    time: Series[float]
    time_hms: Series[str]
    item_type: Series[str]
    country: Series[str]


class ProvinceLookupDF(DataFrameModel):
    """A dataframe model for the province lookup file.

    Attributes:
        province: The province.
        warehouse_id: The warehouse ID.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    province: Series[str]
    warehouse_id: Series[str]


class ExisitingStockAssessDF(DataFrameModel):
    """A dataframe model for the existing stock assessment dashboard file.

    Attributes:
        item: The item type.
        ppl_served_per_item: The people served per item.
        frac_disaster_covered: The fraction of the disaster covered by exisiting stock.
        ppl_served_exisiting: The people served by the existing stock.
        ppl_affected: The number of people affected by disasters for current scenario .
        enough_stock: Whether there is enough stock.
        recommended_stock: The recommended stock for the selected scenario.
        increase_stock_pct: The percentage to increase stock by to meet recommended
        level.
        scenario: The scenario, i.e 50th percentile.
        exisiting_inventory: The existing inventory levels.
        country: The country the results are for.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    item: Series[str]
    ppl_served_per_item: Series[float]
    frac_disaster_covered: Series[float]
    ppl_served_exisiting: Series[int]
    ppl_affected: Series[float]
    enough_stock: Series[bool]
    recommended_stock: Series[int]
    increase_stock_pct: Series[float]
    scenario: Series[float]
    exisiting_inventory: Series[int]
    country: Series[str]


class SingleWarehouseMoveDF(DataFrameModel):
    """A dataframe model for the single warehouse move dataframe.
    This value object will also have percentile columns these
    will changed based on the percentiles selected for analysis
    hence the strict=True is excluded.

    Attributes:
        location: The location.
        ideal_stock: The ideal stock level based on user percentage.
        extra_stock: The extra stock level for user percentage.
        required_stock: The required stock level for user percentage.
        rank_extra_stock: The rank of the extra stock compared with other warehouses.
            I.e a rank of 1 indicates this warehouse has the most extra stock for
            the item.
        rank_required_stock: The rank of the required stock compared with other
            warehouses. I.e a rank of 1 indicates this warehouse needs the most extra
            stock for the item.
        actual_stock_lvl: The actual stock level at the warehouse.
        item: The item.
        country: The country the results are for.

    """

    location: Series[str]
    ideal_stock: Series[float]
    extra_stock: Series[float]
    required_stock: Series[float]
    rank_extra_stock: Series[int]
    rank_required_stock: Series[int]
    actual_stock_lvl: Series[float]
    item: Series[str]
    country: Series[str]


class OptimalStockDF(DataFrameModel):
    """A dataframe model for the optimal stock dataframe.

    Attributes:
        item: The item.
        warehouse_id: The warehouse ID.
        location: The province (admin1) the warehouse is located in.
        percentile: The percentile.
        optimal_stock: The optimal stock level for that item and warehouse at the
            selected percentile.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    item: Series[str]
    warehouse_id: Series[str]
    location: Series[str]
    percentile: Series[str]
    optimal_stock: Series[float]


class Admin1ActualInvDF(DataFrameModel):
    """A dataframe model for the admin1 actual inventory dataframe.

    This is stock which is actually in the facilities for an admin area.

    Attributes:
        location: The admin1 location.
        item: The item.
        actual_stock_lvl: The actual stock level for the admin.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    location: Series[str]
    item: Series[str]
    actual_stock_lvl: Series[float] = Field(coerce=True)


class ReallocationOptionsDF(DataFrameModel):
    """A dataframe model for the reallocation options dataframe.

    Attributes:
        location: The location to ether move stock from or to.
        actual_stock_lvl: The actual stock level at the location.
        extra_or_needed_stock: The extra or needed stock level at the location.
        cost: The cost savings from moving stock to/from the location.
        time: The time savings from moving stock to/from the location. Formatted as
            HH:MM:SS.
        move_from: A string indicating whether the item is needed or extra. If the value
            is needed this indicates the stock is being moved from the location to
            the user_location. If the value is extra the opposite is true.
        user_location: The other location the stock is moving to/from.
        scenario: The disaster scenario. i.e 50th percentile.
        item: The item to move.
        country: The country the results are for.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    location: Series[str]
    actual_stock_lvl: Series[float]
    extra_or_needed_stock: Series[float]
    cost: Series[float]
    time: Series[str]
    move_from: Series[str] = Field(isin=["Needed", "Extra"])
    user_location: Series[str]
    scenario: Series[int]
    item: Series[str]
    country: Series[str]


class DisasterTotals(DataFrameModel):
    """A dataframe model for the disaster totals dataframe.

    Attributes:
        disaster_id: The disaster ID.
        total_affected: The total number of people affected.
        country: The country the disaster occurred in.

    """

    class Config:
        """Pandera configuration."""

        strict = True

    disaster_id: Series[str]
    total_affected: Series[float] = Field(coerce=True, ge=1)
    country: Series[str]
