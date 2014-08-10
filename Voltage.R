# cacheable <- makeCacheableData()
x <- loadCached(cacheable, "household_power_consumption.txt")
plot(x$DateTime, 
     x$Voltage, type="l", 
     ylab = "Voltage",
     xlab = "datetime"
)