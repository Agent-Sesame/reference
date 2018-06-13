# hint 1: use modulus operator '%%' to find remainder
# test case 1: from command line without function 7 %% 4 == 3
# this function is just a fancy way of using the modulus operator if you can't
# remember this special operator.
# test case 2: remainder(7, 4) == 3

remainder <- function(num, divisor = 2) {
  
  rmdr <- num %% divisor
  print(rmdr)

  }
