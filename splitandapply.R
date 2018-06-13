splitandapply <- function() {
  
  # make sample data frame
  
  a <- c(rep("a", 5), rep("b", 5))
  b <- c(11, 12, 13, NA, 15, 16, NA, 18, 19, 20)
  d <- c(rep(1, 3), rep(2, 4), rep(4, 3))
  e <- cbind.data.frame(a, b, d)
  
  # split data frame into list based on value in first column A
  
  g <- split(e, e$a)
  
  # apply the mean function to the 3rd column d in the list created in the 
  # prior step
  
  h <- lapply(g, function (x) mean(x[,3], use="complete.obs"))
  
  return(h)
  
}