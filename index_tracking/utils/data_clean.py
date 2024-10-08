def clean_data(df_prices, 
               mkt_symbol,
               thresh_valid_data = 0.95,
               size_train = 0.75):
    """Clean stock price data, removing tickers with low ammount of observations
    
    PARAMETERS
    ----------
        df_prices : pandas.DataFrame
            A dataframe with prices in the long format
        
        mkt_symbol : str
            The symbol for the market index (e.g. "^GSPC" or 
            
        thresh_valid_data - float

    
    """

    df_sp500 = df_prices.query("ticker == @mkt_symbol")

    print(df_prices.info())

    rows_sp500 = df_sp500.shape[0]
    threshold_rows = rows_sp500*thresh_valid_data

    ticker_count = df_prices["ticker"].value_counts()

    valid_tickers = ticker_count[ticker_count >= threshold_rows].index

    # Remove tickers with low data volume
    idx = df_prices["ticker"].isin(valid_tickers)

    df_prices_cleaned = df_prices[idx]

    print(f"Size original: {df_prices.shape}")
    print(f"Size reduced: {df_prices_cleaned.shape}")

    # change to wide table
    df_prices_pivot = df_prices_cleaned.pivot(
        columns='ticker', 
        values='Adj Close'
        )

    # drop all NAs
    df_prices_pivot.dropna(inplace= True)

    # calculate returns
    df_ret = df_prices_pivot.pct_change().dropna()

    n_obs = df_ret.shape[0]
    ref_dates = df_ret.index
    cut_point = int(n_obs*size_train)
    cut_date = ref_dates[cut_point]

    df_train = df_ret[df_ret.index < cut_date]
    df_test = df_ret[df_ret.index >= cut_date]
     
    return df_ret, df_train, df_test
    