pollutemean  <- function(directory, pollutant="sulfate", id = 1:332) {
  list  <- list.files(directory)
  id  <- paste(id, ".csv", sep="")
  list  <- list[list %in% id]
  list  <- paste(directory, list, sep="")
  list  <- do.call("rbind", lapply(list, read.csv, header=TRUE))
  result  <-  list[, pollutant]
  result  <- mean(result, na.rm =TRUE)
}