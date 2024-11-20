import pandas as pd

"""
Subtable for lookups. This implementation uses an internal Pandas dataframe. Ideas to improve:
- When the number of rows is small, just iterating may be faster than using masks
- When the table is accessed from a loop involving multiple dimensions, we may benefit from caching combined masks
"""


class LookupSubtablePandas:
    def __init__(self, df: pd.DataFrame, defaults: dict[str, any]):
        self._data = df
        self._lruValues = {}
        self._lruData = {}
        self._defaults = defaults

    def lookup(self, filter: dict[str, any]):
        result = self._data
        prefix_match = True
        for key, _ in self._defaults.items():
            value = filter[key]
            if prefix_match and self._lruValues.get(key) == value:
                result = self._lruData[key]
            else:
                prefix_match = False
                self._lruData[key] = result = result[
                    result[key].isin([value, self._defaults[key]])
                ]
                self._lruValues[key] = value
        return result.iloc[0].to_dict()


"""
Lookup tables have three groups of columns:
1) Columns containing wildcards that will match any filter value provided during lookup
2) Columns that don't contain wildcards, but will still be used for filtering during lookup
3) Columns that are only part of the result of a lookup

We assume the set of values provided during lookup always matches column sets 1+2
"""


class LookupTable:
    """
    Construct a lookup table.
    - df: The original dataframe
    - defaults: Columns containing wildcards that match any filter value (e.g. '*' or 'DEFAULTS'); keys are column names, values are the wildcard value
    - filterable: Names of any other columns on which filtering will be applied
    """

    def __init__(
        self, df: pd.DataFrame, defaults: dict[str, any], filterable: list[str]
    ):
        self._defaults = defaults
        self._filterable = filterable

        df = df.reset_index()

        counter = pd.Series(0, df.index)
        for key, default_value in self._defaults.items():
            counter = counter + (df[key] == default_value)
        df["_DefaultCount"] = counter

        if len(filterable) > 0:
            grouped = df.sort_values("_DefaultCount").groupby(filterable, sort=False)
            self._data = {
                key: LookupSubtablePandas(grouped.get_group(key), defaults)
                for key in grouped.groups
            }
        else:
            self._data = LookupSubtablePandas(df.sort_values("_DefaultCount"), defaults)

    """
    Lookup the best matching row from the original dataframe.
    - filter: Mapping of columns to values; the columns must match the combination of 'defaults' and 'filterable' provided when the table was initialized
    """

    def lookup(self, filter: dict[str, any]):
        # Select the right subtable
        if len(self._filterable) > 0:
            group_keys = [filter[x] for x in self._filterable]
            group_keys = tuple(group_keys) if len(group_keys) > 1 else group_keys[0]
            subtable = self._data[group_keys]
        else:
            subtable = self._data

        # Find the remaining filter items
        remaining_filter = {
            key: value for key, value in filter.items() if key in self._defaults
        }
        return subtable.lookup(remaining_filter)
