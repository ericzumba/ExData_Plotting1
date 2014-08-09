load <- function(path) {
  if(is.null(wow)) {
    wow <- read.csv(path, header = T, sep = ";")
  }
  wow
}