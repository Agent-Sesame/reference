# A function may be passed as an argument to a different function. With the
# following example, function, 'func' can be any function  and 'dat' is the data
# that should be passed to 'func'. Examples: 
#    1. evaluate(sum, c(2, 4, 6)) should evaluate to 12
#    2. evaluate(median, c(7, 40, 9)) should evaluate to 9
#    3. evaluate(floor, 11.1) should evaluate to 11

functionasargument <- function(func, dat){

        func(dat)

}