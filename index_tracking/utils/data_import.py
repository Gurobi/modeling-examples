import yfinance as yf
import pandas as pd
from multiprocessing import Pool
from itertools import repeat

def get_yf_data(tickers, 
                first_date, 
                last_date,
                n_processes = 5):
    

    # fetch data with multiprocessing
    with Pool(n_processes) as p:
            
        l_prices = p.starmap(get_single_ticker, 
                             zip(tickers, 
                                 repeat(first_date), 
                                 repeat(last_date)))

    # combine all dataframes into a single dataframe
    df_prices = pd.concat(l_prices)
    
    # only keep price, date and ticker
    df_prices = df_prices[["Adj Close", "ticker"]]
    
    return df_prices

def get_mkt_constitution(mkt_index = "^SP100"):
    
    if mkt_index == "^SP100":
        tickers = get_sp100_constitution()
        
    elif mkt_index == "^GSPC":
        tickers = get_sp500_constitution()
        
    else:
        raise ValueError("mkt_index must either be SP100 or SP500")
        
    return tickers

        
def get_sp500_constitution():
    """Returns constitutents of SP500 index and the index itself 
    
    Parameters
    ----------
        None
        
    Returns
    -------
    list
        A list of tickers.


    Examples
    --------
    >>> print(get_sp500_constitution())
    """
    
    print("Fetching SP500 components")
    wiki_url =  "https://en.wikipedia.org/wiki/List_of_S%26P_500_companies"
    
    table = pd.read_html(wiki_url)[0]
    
    tickers = table["Symbol"].tolist()
    
    print(f"\t-> got {len(tickers)} tickers", end="\n\n")
        
    # add SP500 index itself
    tickers.append("^GSPC") 
               
    return tickers

def get_sp100_constitution():
    """Returns constitutents of SP100 index and the index itself 
    
    Parameters
    ----------
        None
        
    Returns
    -------
    list
        A list of tickers.


    Examples
    --------
    >>> print(get_sp100_constitution())
    """
    
    print("Fetching SP100 components")
    wiki_url =  "https://en.wikipedia.org/wiki/S%26P_100#Components"
    
    table = pd.read_html(wiki_url)[2]
    
    tickers = table["Symbol"].tolist()
    
    print(f"\t-> got {len(tickers)} tickers", end="\n\n")
        
    # add SP500 index itself
    tickers.append("^SP100") 
               
    return tickers

def get_single_ticker(ticker, first_date, last_date):
    """Fetch yahoo finance stock data for input ticker 
    
    Parameters
    ----------
        ticker: str
            ticker symbol (e.g. "MSFT")
        first_date: str
            the first date to fecth data in the YYYY-MM-DD format
        last_date: str
            the first date to fecth data in the YYYY-MM-DD format
            
        
    Returns
    -------
    pandas.dataframe
        A pandas dataframe with prices of a single ticker


    Examples
    --------
    >>> print(get_sp500_constitution())
    """
    print(f"{ticker} ", end = "\t")
    
    data = yf.download(ticker, 
                       start = first_date,
                       end = last_date,                        
                       group_by="Ticker", 
                       progress = False)
    
    #print(f" [{data.shape[0]}]", end = "\t")
    
    data['ticker'] = ticker
    
    return data