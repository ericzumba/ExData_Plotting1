# cacheable <- makeCacheableData()
x <- loadCached(cacheable, "household_power_consumption.txt")

png(filename="plot2.png")
plot(x$DateTime, 
     x$Global_active_power, type="l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)
dev.off()
