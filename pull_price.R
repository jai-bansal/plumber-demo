# This script creates a function to be used with the "plumber" package.


# IMPORT MODULES ----------------------------------------------------------
library(quantmod)
library(plumber)

# DEFINE FUNCTION ---------------------------------------------------------
# This section defines a function to pull stock prices.

# Define function. Comment below is for "plumber" to work.
#' @get /pull_price
pull_price = function(symbol)
  
{
  
  # Get last price.
  price = getQuote(symbol)$Last
  
  # Return time and last price.
  return(paste0(Sys.time(), ': ', toupper(symbol), ' $', price))
  
}


