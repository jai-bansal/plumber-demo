# This script creates an API using the function defined in "pull_price.R"

# IMPORT MODULES ----------------------------------------------------------
library(plumber)

# CREATE API --------------------------------------------------------------
# This section creates the API.

# Create API. Make sure working directory is set correctly.
api = plumb('pull_price.R')

# Run API.
api$run(port = 8000)

# The API can be access from a web browser with the following URL: 
# 'http://localhost:8000/pull_price?symbol=AAPL'
# Everything after the '=' sign should be replaced with the desired 
# ticker symbol to look up.


