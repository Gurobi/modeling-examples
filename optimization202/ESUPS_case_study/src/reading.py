import math
import os
from glob import glob
from typing import Tuple

import pandas as pd

from src.data import (
    Country,
    Dataset,
    Depot,
    Disaster,
    DisasterImpact,
    DisasterLocation,
    DisasterType,
    DistanceInfo,
    Item,
    Location,
    TransportMode,
)
from src.lookup import LookupTable


class CsvProblemReader:
    def read(self, folder: str, min_year: int = 0, max_year: int = 9999) -> Dataset:
        countries = self._read_countries(os.path.join(folder, "countryContinents.csv"))

        # Disasters filtered by type/year
        disaster_types = self._read_disaster_type_selection(
            os.path.join(folder, "disasterTypeSelection.csv")
        )
        disaster_coordinates = self._read_disaster_coordinates(
            os.path.join(folder, "disasterCoordinates.csv")
        )
        (disasters, disaster_locations, disaster_totals) = self._read_impact_data(
            os.path.join(folder, "disasters.csv"),
            disaster_types,
            countries,
            disaster_coordinates,
            min_year,
            max_year,
        )

        # Items with attributes
        items = self._read_items(os.path.join(folder, "items.csv"))

        # Depots and inventory
        depot_selection = self._read_depot_selection(
            os.path.join(folder, "depotSelection.csv")
        )
        depot_mapping = self._read_depot_mapping(
            os.path.join(folder, "depotMapping.csv")
        )
        depots = self._read_depot_coordinates(
            os.path.join(folder, "depotCoordinates.csv"), depot_selection, countries
        )

        inventory_scenarios = {
            os.path.basename(path): self._read_inventory(
                path, depots, depot_mapping, items
            )
            for path in glob(os.path.join(folder, "inventory", "*.csv"))
        }

        inventory = inventory_scenarios["actual.csv"]

        ability_to_respond = self._read_ability_to_respond(
            os.path.join(folder, "abilityToRespond.csv"), countries.values(), items
        )

        (transport_modes, distances) = self._read_distance_matrix(
            os.path.join(folder, "distanceMatrix.csv"),
            os.path.join(folder, "transportModes.csv"),
            os.path.join(folder, "transportParameters.csv"),
            depots,
            disaster_locations,
        )

        (
            people_affected,
            persons_per_item_general,
            persons_per_item_monthly,
        ) = self._read_demand(
            os.path.join(folder, "personsPerItem.csv"),
            disasters,
            items,
            ability_to_respond,
        )

        probabilities = {disaster: 1 / len(disasters) for disaster in disasters}

        return Dataset(
            depots,
            disasters,
            disaster_locations,
            probabilities,
            items,
            transport_modes,
            inventory,
            inventory_scenarios,
            distances,
            people_affected,
            persons_per_item_general,
            persons_per_item_monthly,
            disaster_totals,
        )

    def _read_disaster_coordinates(self, path: str) -> dict[str, str]:
        return pd.read_csv(path).set_index("gglAddressAscii").to_dict("index")

    def _read_disaster_type_selection(self, path: str) -> list[DisasterType]:
        data = pd.read_csv(path)
        filtered = data[data["include"] == 1]
        return [DisasterType(id) for id in filtered["disasterType"].tolist()]

    def _read_impact_data(
        self,
        path: str,
        disaster_types: list[DisasterType],
        countries: dict[str, Country],
        disaster_coordinates: dict[str, any],
        min_year: int,
        max_year: int,
    ) -> tuple[list[Disaster], list[DisasterLocation], dict[str, int]]:
        disaster_type_lookup = {
            disaster_type.id: disaster_type for disaster_type in disaster_types
        }
        disaster_type_keys = disaster_type_lookup.keys()

        data = pd.read_csv(path)

        # Filter by provided disaster types
        data = data[data["Type"].isin(disaster_type_keys)]

        # Filtered by year rage
        data = data[(data["Year"] >= min_year) & (data["Year"] <= max_year)]

        # Filter out rows with NULL for affected people
        data = data[~data["TotAffected"].isna()]

        disaster_affected_totals = data.groupby("DisasterID")["TotAffected"].sum()
        disaster_affected_totals = disaster_affected_totals.to_dict()

        disasters: list[Disaster] = []
        locations: dict[str, DisasterLocation] = {}

        grouped_data = data.groupby("DisasterID")

        for disaster_id, rows in grouped_data:
            impacted_locations = []

            row = rows.iloc[0]
            disaster = Disaster(
                disaster_id,
                disaster_type_lookup[row["Type"]],
                row["Day"],
                row["Month"],
                row["Year"],
                impacted_locations,
            )

            for index, row in enumerate(rows.to_dict("records")):
                address = row["gglAddress"]
                if address not in locations:
                    location = DisasterLocation(
                        address,
                        address,
                        countries[row["gglCountry"]],
                        disaster_coordinates[address]["gglLat"],
                        disaster_coordinates[address]["gglLong"],
                    )
                    locations[address] = location
                else:
                    location = locations[address]

                sub_location_id = "SubLoc_{0:05}".format(index)
                impacted_locations.append(
                    DisasterImpact(
                        f"{disaster_id}:{sub_location_id}",
                        disaster,
                        location,
                        index,
                        row["TotAffected"],
                    )
                )

            disasters.append(disaster)

        return (disasters, list(locations.values()), disaster_affected_totals)

    def _read_countries(self, path: str) -> dict[str, Country]:
        data = pd.read_csv(path)
        return {
            row.gglCountry: Country(row.gglCountry, row.Continent)
            for row in data.itertuples()
        }

    def _read_depot_selection(self, path: str) -> list[str]:
        data = pd.read_csv(path)
        filtered = data[data["include"] == 1]
        return filtered["gglAddressAscii"].tolist()

    def _read_depot_mapping(self, path: str) -> dict[str, str]:
        data = pd.read_csv(path)
        return data.set_index("gglAddressAsciiMapFrom")[
            "gglAddressAsciiMapTo"
        ].to_dict()

    def _read_depot_coordinates(
        self, path: str, depot_selection: list[str], countries: dict[str, Country]
    ) -> list[Depot]:
        data = pd.read_csv(path)
        data = data[data["gglAddressAscii"].isin(depot_selection)]
        return [
            Depot(
                row.gglAddressAscii,
                row.gglAddressAscii,
                countries[row.gglCountryAscii],
                row.gglLat,
                row.gglLong,
            )
            for row in data.itertuples()
        ]

    def _read_inventory(
        self,
        path: str,
        depots: list[Depot],
        depot_mapping: dict[str, str],
        items: list[Item],
    ) -> dict[Tuple[Depot, Item], int]:
        data = pd.read_csv(path)

        # Apply address mapping
        data["gglAddress"] = data["gglAddress"].replace(depot_mapping)

        # Group by address and item name
        data = data.groupby(["ItemName", "gglAddress"])[["Total"]].sum().reset_index()

        item_lookup = {item.id: item for item in items}
        depot_lookup = {depot.address: depot for depot in depots}

        return {
            (depot_lookup[row.gglAddress], item_lookup[row.ItemName]): row.Total
            for row in data.itertuples()
        }

    def _read_items(self, path: str) -> list[Item]:
        data = pd.read_csv(path)
        # TODO Ensure all inventory items have attributes

        result = [
            Item(row.ItemName, row.WeightMetricTon, row.CubicMeters)
            for row in data.itertuples()
        ]
        return result

    def _read_distance_matrix(
        self,
        path_distances: str,
        path_modes: str,
        path_params: str,
        depots: list[Depot],
        disaster_locations: list[DisasterLocation],
    ) -> Tuple[
        list[TransportMode],
        dict[Tuple[Location, Location, TransportMode], DistanceInfo],
    ]:
        distances = pd.read_csv(path_distances)
        modes = pd.read_csv(path_modes)
        params = pd.read_csv(path_params)

        transport_modes = [
            TransportMode(
                row.Mode,
                row.DistanceMethod,
                row.BigMCostElim,
                row.MaxDrivingTimeCutAboveHrs,
            )
            for row in modes.itertuples()
        ]

        params = params.pivot(
            index=["Mode", "gglAddress"], columns="Attribute", values="Number"
        )

        depot_lookup = {depot.address: depot for depot in depots}
        location_lookup = {
            location.address: location for location in disaster_locations
        }

        pairs = {
            (
                depot_lookup[row.depotGglAddressAscii],
                location_lookup[row.disasterGglAddressAscii],
            ): (
                self._calc_distance_latlong(
                    row.depotGglLat,
                    row.depotGglLong,
                    row.disasterGglLat,
                    row.disasterGglLong,
                ),
                float(row.distance_km),
                float(row.drivingTime_hrs),
            )
            for row in distances.itertuples()
            if row.depotGglAddressAscii in depot_lookup
            and row.disasterGglAddressAscii in location_lookup
        }

        if len(pairs) == 0:
            raise RuntimeError(f"Empty distance matrix encountered")

        # TODO Check that inventory depot names are in 'depots'
        # TODO Check that tot.affected disaster names are in 'disasters'
        # TODO Discuss: Distances CSV contains lat/lng too; why not use those!?
        params_lookup = LookupTable(params, {"gglAddress": "DEFAULT"}, ["Mode"])
        matrix = {
            (depot, disaster, transport_mode): DistanceInfo(
                *self._calc_distance_travel_time_cost(
                    spherical_distance,
                    google_distance,
                    driving_time_hrs,
                    depot,
                    params_lookup,
                    transport_mode,
                ),
            )
            for (depot, disaster), (
                spherical_distance,
                google_distance,
                driving_time_hrs,
            ) in pairs.items()
            for transport_mode in transport_modes
        }

        return (transport_modes, matrix)

    def _read_ability_to_respond(
        self, path: str, countries: list[Country], items: list[Item]
    ) -> dict[Tuple[Country, Item], float]:
        data = pd.read_csv(path).set_index(["gglCountry", "item"])["capacityToRespond"]

        result = {
            (country, item): data.loc[country.id, "DEFAULT"]
            for country in countries
            for item in items
        }

        return result

    def _add_counter(self, df: pd.DataFrame) -> pd.DataFrame:
        result = []
        counter = 0
        previous = None
        for i in range(len(df)):
            current = df[i]
            counter = counter + 1 if previous == current else 0
            result.append(counter)
            previous = current
        return pd.DataFrame(result)

    def _calc_distance_latlong(self, lat1, long1, lat2, long2):
        # Convert latitude and longitude to
        # spherical coordinates in radians.

        # Add noise to lat and long so that no div 0 errror if same spot
        lat1 = lat1 + 1e-7
        long1 = long1 + 1e-7

        degrees_to_radians = math.pi / 180.0

        # phi = 90 - latitude
        phi1 = (90.0 - lat1) * degrees_to_radians
        phi2 = (90.0 - lat2) * degrees_to_radians

        # theta = longitude
        theta1 = long1 * degrees_to_radians
        theta2 = long2 * degrees_to_radians

        # Compute spherical distance from spherical coordinates.

        cos = math.sin(phi1) * math.sin(phi2) * math.cos(theta1 - theta2) + math.cos(
            phi1
        ) * math.cos(phi2)

        arc = math.acos(cos)

        # Remember to multiply arc by the radius of the earth
        # in your favorite set of units to get length.
        return arc * 6378.1

    def _calc_distance_travel_time_cost(
        self,
        spherical_distance: float,
        google_distance: float,
        google_driving_time: float,
        depot: Depot,
        params_lookup: LookupTable,
        transport_mode: TransportMode,
    ) -> Tuple[float, float, float]:
        default_params = {
            "fixedTime": 0,
            "StretchTimeFactor": 1,
            "RealKm_per_CrowKm": 1,
        }
        # TODO Try retrieving by depot name first (proper 'wildcard lookup')
        params = default_params | params_lookup.lookup(
            {"Mode": transport_mode.id, "gglAddress": depot.address}
        )
        result_distance = spherical_distance

        # TODO Document the expected columns for 'params'

        if transport_mode.distance_method == "google":
            result_distance = google_distance
            base_time = google_driving_time
        elif transport_mode.distance_method == "crowScale":
            result_distance = spherical_distance * params["RealKm_per_CrowKm"]
            base_time = result_distance / params["SpeedKmPerHr"]
        else:
            raise NameError("You don't have a proper distance method.")

        if base_time >= transport_mode.max_driving_time_cut_above_hrs:
            (time, cost_per_ton) = (
                transport_mode.big_m_cost_elim,
                transport_mode.big_m_cost_elim,
            )
        else:
            time = params["FixedAddlTime_Hrs"] + base_time * params["StretchTimeFactor"]
            cost_per_ton = (
                params["FixedAddlCost_USD"]
                + result_distance
                * params["StretchDistanceFactor"]
                * params["VarCost_USD_ton_km"]
            )

        return (result_distance, time, cost_per_ton)

    def _read_demand(
        self,
        path_demand: str,
        disasters: list[Disaster],
        items: list[Item],
        ability_to_respond: dict[Tuple[Country, Item], float],
        zero_demand_threshold: float = 1000000,
    ) -> Tuple[
        dict[Tuple[DisasterImpact, Item], float],
        dict[Tuple[DisasterImpact, Item], float],
        dict[Tuple[DisasterImpact, Item], float],
    ]:
        df = pd.read_csv(path_demand)

        people_affected = {
            (impact, item): max(
                0,
                impact.total_affected
                - ability_to_respond[impact.location.country, item],
            )
            for disaster in disasters
            for impact in disaster.impacted_locations
            for item in items
        }

        lookup = LookupTable(
            df,
            {"Disaster Type": "DEFAULT", "gglCountry": "DEFAULT", "Month": "DEFAULT"},
            ["Item"],
        )

        persons_per_item_general = {
            (impact, item): lookup.lookup(
                {
                    "Item": item.id,
                    "Disaster Type": disaster.type.id,
                    "Month": -1,
                    "gglCountry": impact.location.country.id,
                }
            )["PersonsPerItem"]
            for disaster in disasters
            for impact in disaster.impacted_locations
            for item in items
        }

        persons_per_item_monthly = {
            (impact, item): lookup.lookup(
                {
                    "Item": item.id,
                    "Disaster Type": disaster.type.id,
                    "Month": disaster.month if disaster.month in range(1, 13) else -1,
                    "gglCountry": impact.location.country.id,
                }
            )["PersonsPerItem"]
            for disaster in disasters
            for impact in disaster.impacted_locations
            for item in items
        }

        return (
            people_affected,
            persons_per_item_general,
            persons_per_item_monthly,
        )


class DatasetManager:
    _datasets: list[str]
    _cache: dict[str, Dataset] = {}

    def __init__(self, path="data"):
        self._root = path
        self._datasets = self.get_immediate_subdirectories(path)
        self._reader = CsvProblemReader()

    def get_immediate_subdirectories(self, parent_dir: str):
        return [
            name
            for name in os.listdir(parent_dir)
            if os.path.isdir(os.path.join(parent_dir, name))
        ]

    def list_dataset_keys(self):
        return list(self._datasets)

    def get_dataset(self, key: str) -> Dataset:
        if key in self._cache:
            return self._cache[key]

        if key not in self._datasets:
            raise Exception(f'Unknown dataset "{key}"')

        dataset = self._reader.read(os.path.join(self._root, key))
        self._cache[key] = dataset
        return dataset
