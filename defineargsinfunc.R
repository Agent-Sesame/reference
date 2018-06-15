# This function captures the ellipsis inside of a list assigned to variable
# 'args'. Within args, any number of named arguments may be declared within 
# variable 'args'. This example declares 'arg1', 'arg2', 'arg3' within variable
# 'args'. The named arguments are extracted from the args list by using the 
# name of the argument and double bracket. 

defineargsinfunc <- function(...){

  args <- list(...)

  arg1 <- args[["arg1"]]
  arg2 <- args[["arg2"]]
  arg3 <- args[["arg3"]]

  paste("Arguments", arg1, "and", arg2, "and", arg3, "are set.")

}
