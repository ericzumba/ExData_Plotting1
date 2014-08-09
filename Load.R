load <- function(path) {
  if(is.null(wow)) {
    wow <- read.csv(path, header = T, sep = ";")
  }
  wow[(wow$Date == "1/2/2007" | wow$Date == "2/2/2007"), ]
}