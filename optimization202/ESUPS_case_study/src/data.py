import functools
from dataclasses import dataclass, field
from typing import Callable, Tuple


@dataclass(frozen=True)
class Country:
    id: str = field(hash=True)
    continent: str = field(repr=False)


@dataclass(frozen=True)
class Location:
    id: str = field(hash=True)
    address: str = field(repr=False)
    country: Country = field(repr=False)
    latitude: float = field(repr=False)
    longitude: float = field(repr=False)


@dataclass(frozen=True)
class DisasterType:
    id: str


@dataclass(frozen=True)
class DisasterImpact:
    id: str
    disaster: "Disaster" = field(repr=False)
    location: "DisasterLocation" = field(repr=False)
    sub_location_nr: int = field(repr=False)
    total_affected: int = field(repr=False)

    def __repr__(self):
        return self.id


@dataclass(frozen=True)
class DisasterLocation(Location):
    def __repr__(self):
        return self.id


@dataclass(frozen=True)
class Disaster:
    id: str
    type: DisasterType = field(repr=False)
    day: int = field(repr=False)
    month: int = field(repr=False)
    year: int = field(repr=False)
    impacted_locations: list[DisasterImpact] = field(hash=False, repr=False)


@dataclass(frozen=True)
class Depot(Location):
    pass


@dataclass(frozen=True)
class Item:
    id: str = field(hash=True)
    weight: float = field(repr=False)  # Metric tons
    volume: float = field(repr=False)  # Cubic metres


@dataclass(frozen=True)
class TransportMode:
    id: str = field(hash=True)
    distance_method: str
    big_m_cost_elim: float
    max_driving_time_cut_above_hrs: float


@dataclass(frozen=True)
class DistanceInfo:
    distance: float  # Kilometres
    time: float  # Hours
    cost_per_ton: float  # USD


DistanceMatrix = dict[Tuple[Location, Location, TransportMode], DistanceInfo]

@dataclass(frozen=True)
class Dataset:
    depots: list[Depot]
    disasters: list[Disaster]
    disaster_locations: list[DisasterLocation]
    probabilities: dict[Disaster, float]
    items: list[Item]
    transport_modes: list[TransportMode]
    inventory: dict[Tuple[Depot, Item], int]
    inventory_scenarios: dict[str, dict[Tuple[Depot, Item], int]]
    distance: DistanceMatrix
    people_affected: dict[Tuple[DisasterImpact, Item], float]
    persons_per_item_general: dict[Tuple[DisasterImpact, Item], float]
    persons_per_item_monthly: dict[Tuple[DisasterImpact, Item], float]
    disaster_affected_totals: dict[str, int]

    _zero_demand_threshold = 1e6

    def take_disaster_subset(self, predicate: Callable[[Disaster], bool]) -> "Dataset":
        """
        Generate a smaller dataset by only selecting a subset of the disasters with corresponding data
        """
        disasters = list(filter(predicate, self.disasters))

        if len(disasters) == len(self.disasters):
            return self

        total_probability = sum(self.probabilities[disaster] for disaster in disasters)
        probabilities = {
            disaster: self.probabilities[disaster] / total_probability
            for disaster in disasters
        }
        locations = [
            impact.location
            for disaster in disasters
            for impact in disaster.impacted_locations
        ]
        distance = {
            (source, destination, mode): cell
            for (source, destination, mode), cell in self.distance.items()
            if destination in locations
        }
        people_affected = {
            (location, item): value
            for (location, item), value in self.people_affected.items()
            if location in locations
        }
        persons_per_item_general = {
            (location, item): value
            for (location, item), value in self.persons_per_item_general.items()
            if location in locations
        }
        persons_per_item_monthly = {
            (location, item): value
            for (location, item), value in self.persons_per_item_monthly.items()
            if location in locations
        }
        return Dataset(
            self.depots,
            disasters,
            locations,
            probabilities,
            self.items,
            self.transport_modes,
            self.inventory,
            self.inventory_scenarios,
            distance,
            people_affected,
            persons_per_item_general,
            persons_per_item_monthly,
            self.disaster_affected_totals,
        )

    def take_inventory_scenario(self, filename: str):
        if filename not in self.inventory_scenarios:
            raise RuntimeError("Inventory scenario not found")
        inventory = self.inventory_scenarios[filename]
        if inventory == self.inventory:
            return self
        return Dataset(
            self.depots,
            self.disasters,
            self.disaster_locations,
            self.probabilities,
            self.items,
            self.transport_modes,
            inventory,
            self.inventory_scenarios,
            self.distance,
            self.people_affected,
            self.persons_per_item_general,
            self.persons_per_item_monthly,
            self.disaster_affected_totals,
        )

    @functools.cached_property
    def general_demand(self) -> dict[Tuple[DisasterImpact, Item], float]:
        general_demand = {
            (location, item): self._calc_items_needed(
                self.people_affected[location, item],
                self.persons_per_item_general[location, item],
            )
            for disaster in self.disasters
            for location in disaster.impacted_locations
            for item in self.items
        }

        return {key: value for key, value in general_demand.items() if value > 1e-1}

    @functools.cached_property
    def monthly_demand(self) -> dict[Tuple[DisasterImpact, Item], float]:
        monthly_demand = {
            (location, item): self._calc_items_needed(
                self.people_affected[location, item],
                self.persons_per_item_monthly[location, item],
            )
            for disaster in self.disasters
            for location in disaster.impacted_locations
            for item in self.items
        }

        return {key: value for key, value in monthly_demand.items() if value > 1e-3}

    def _calc_items_needed(
        self,
        people_affected: float,
        beta: float,
    ):
        if beta == 0 or beta >= self._zero_demand_threshold:
            return 0
        else:
            return people_affected / beta
