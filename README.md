## plumber-demo

### Summary

Create a demo for the R "plumber" package. I create an API that pulls a stock price.

### Motivation

Learn to use the R "plumber" package.

### Files
- 'pull_price.R' creates a function that pulls stock price for a given ticker symbol
- 'create_api.R' creates an API using 'pull_price.R'

### Usage

After running 'create_api.R', the API can be used by entering the following URL into a browser:
'http://localhost:8000/pull_price?symbol=AAPL'

Everything after the '=' sign should be replaced with the ticker symbol of interest.
