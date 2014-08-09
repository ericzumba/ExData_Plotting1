makeCacheableData <- function() {
  result <- NULL
  setCache <- function(loaded) result <<- loaded
  getCache <- function() result
  list(setCache = setCache, 
       getCache = getCache)
}

loadCached <- function(cacheable, path) {
  c <- cacheable$getCache()
  if(!is.null(c)) {
    message("loaded cached data")
    return(c)
  }
  wow <- read.csv(path, header = T, sep = ";", stringsAsFactors = F)
  c <- wow[(wow$Date == "1/2/2007" | wow$Date == "2/2/2007"), ]
  cacheable$setCache(c)
  c
}