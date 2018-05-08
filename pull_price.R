# This script creates a function to be used with the "plumber" package.


# IMPORT MODULES ----------------------------------------------------------
library(quantmod)
library(plumber)
library(jsonlite)

# DEFINE FUNCTION ---------------------------------------------------------
# This section defines a function to pull stock prices.

# Define function. Comment below is for "plumber" to work.
#' @get /pull_price
pull_price = function(symbol)
  
{
  
  # Get last price.
  price = getQuote(symbol)$Last
  
  # Return time and last price.
  return(toJSON(paste0(Sys.time(), ': ', toupper(symbol), ' $', price)))
  
}


