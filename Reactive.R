# cacheable <- makeCacheableData()
x <- loadCached(cacheable, "household_power_consumption.txt")
plot(x$DateTime, 
     x$Global_reactive_power, type="l", 
     ylab = "Global reactive power",
     xlab = "datetime"
)