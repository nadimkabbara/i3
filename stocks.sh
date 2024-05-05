python3 <<END
tickers = "^GSPC ^IXIC ^TNX ^VIX"
import yfinance as yf
df = yf.download(tickers=tickers, period = "1", interval = "1d", ignore_tz =
True, prepost = False)
df2 = df["Close"]
s_p = (df2.iloc[0][0])
s_p_rounded = round(s_p, 2)
print(s_p_rounded)
END
