most_common_cleaning_prob <- function() {

# this is a solution the most common data cleaning problem i have, when a
# column has a value X that is used as a heading for lines below X that have a
# blank instead of X. X needs to be 'copied' down to the related lines below it.
# trick is the number of records vary dataset to dataset, and the number of 
# different values for X. this solution was suggested by a redditor.

# create sample data frame that demonstrates the problem
  
columnA <- c("abc", "", "", "def", "", "", "")
columnB <- c(100, 1000, 1000, 5, 5, 10, 15)
df_sample <- cbind.data.frame(columnA, columnB)

# solution requires the dplyr package, so dplyr gets loaded

library(dplyr)

# this is the magic for solution. don't understand it yet

df_reddit <- (df_sample
  %>% mutate(grp = cumsum( "" != columnA ) )
  %>% group_by(grp)
  %>% mutate(columnA = columnA[1])
  %>% ungroup()
  %>% select(-grp))

}
