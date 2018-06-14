runtimetool <- function(x) {

  # save the start time of the function

  start_time <- Sys.time()

  # to test a specfic function, replace next line 'Sys.sleep(x)' with desired
  # function. update the input variables in this line to match the needed
  # input function in the object function to test.

  Sys.sleep(x)

  # save end time of the function and calculate time duration, then return

  end_time <- Sys.time()
  time_taken <- end_time - start_time
  return(time_taken)

}