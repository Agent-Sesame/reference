importtool <- function(id = 1:332) {

  # assumes working directory already in correct location

  filelist <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")

  importdf <- do.call("rbind", lapply(filelist, read.csv, header = TRUE))

}