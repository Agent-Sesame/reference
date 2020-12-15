reddit_fix <- function() {
  
  # create sample data frame that demonstrates the problem
  
  columnA <- c("abc", "", "", "def", "", "", "", "ghi", "", "jkl")
  df_reddit <- cbind.data.frame(columnA)
  
  # solution requires the dplyr package, so dplyr gets loaded
  
  library(dplyr)
  
  # this is the magic for solution. don't understand it yet
  
  df_reddit <<- (df_reddit
                 %>% mutate(grp = cumsum( "" != columnA ) )
                 %>% group_by(grp)
                 %>% mutate(columnA = columnA[1])
                 %>% ungroup()
                 %>% select(-grp))
  
}
