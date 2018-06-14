# only make binary operators when needed frequently
#
# User-defined binary operators syntax:
#      %[whatever]% 
# where [whatever] represents any valid variable name
# 
# example: take number A, divide by number B, subtract 2. (12/2)-2=4
# test case: 12 %div_minus_two% 2

"%div_minus_two%" <- function(left, right) {
  left / right - 2
  }