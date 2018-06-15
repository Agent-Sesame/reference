# this function would need reworked in the context of the project in which
# it's used.

changewd <- function(x) {
  
  # list directories in current working directory
  
  check_dirs <- list.files()
  
  # does argument x exist current working directory?
  
  if (x %in% check_dirs) {
    
    # if yes, save old working directory, set new and print it, and restor old
    
    old.dir <- getwd()
    setwd(paste(setwd("."), x, sep = "/"))
    
    # at this point, integrate the code into a different project
    
    print(getwd())
    setwd(old.dir)
    
  } else {
   
    # if x does not exist do this 
    
    print(paste("Directory ", x, " does not exist", sep = "/"))
    
  }
}