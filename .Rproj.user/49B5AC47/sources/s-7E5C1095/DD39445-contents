# this code optimized for the way I store and manage git repos.
# needs tweaking 

changewd <- function(x) {
  old.dir <- getwd()
  new.dir <- paste(setwd(".."), x, sep = "/")
  setwd(new.dir)
  print(getwd())
  setwd(old.dir)
  print(getwd())
}