rankeddf <- function(num = "best") {

  # Create data frame with additional column that includes the data
  # "best", 2..., "worst", then subset this new data frame by argument
  # 'num'. The problem with this method is that when 'num' exceeds the
  # maximum number of observations, the result isn't returning 'NA' as
  # specified.

  hospital <- c("Hospital A", "Hospital B", "Hospital C", "Hospital D")
  mortality <- c(1, 2, 2, 3)
  ranking <- c("best", 2:(length(mortality) - 1), "worst")
  sample <- data.frame(cbind(hospital, mortality, ranking))
  sample <- sample[sample$ranking == num, ]
  sample <<- as.character(sample[, 1])

}