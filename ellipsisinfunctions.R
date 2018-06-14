# Ellipses are used to pass arguments to other functions used within the
# writing of a function. Usually a function with ellipses as an argument
# has the ellipses as the last argument. An example:
# 
# ellipses_func(arg1, arg2 = TRUE, ...)
#
# Use of the ellipses has a strict rule: all arguments after an ellipsis 
# must have default values.

ellipsisinfunctions <- function(...){

  print(paste("START", ..., "STOP"))

}