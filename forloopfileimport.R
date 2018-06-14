forloopfileimport <- function(directory) {
  
  # create list of files to import inside a single directory
  
  list.to.import <- list.files(directory, full.names = TRUE)
  
  # create empty data frame
  
  dat <- data.frame()
  
  # for loop that reads in files from 'list.to.import' & binds files together
  
  for (i in 1:3) {dat <- rbind(dat, read.csv(list.to.import[i]))}

  dat <<- dat
}
