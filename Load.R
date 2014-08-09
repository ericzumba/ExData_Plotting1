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
  c$Global_active_power <- as.numeric(c$Global_active_power)
  c$Sub_metering_1 <- as.numeric(c$Sub_metering_1)
  c$Sub_metering_2 <- as.numeric(c$Sub_metering_2)
  c$Sub_metering_3 <- as.numeric(c$Sub_metering_3)
  c$DateTime <- as.POSIXct(paste(c$Date, c$Time), format="%d/%m/%Y %H:%M:%S")
  
  cacheable$setCache(c)
  c
}