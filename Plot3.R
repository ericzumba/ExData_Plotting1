# cacheable <- makeCacheableData()
x <- loadCached(cacheable, "household_power_consumption.txt")

# png("plot3.png")

par(col="black")
plot(x$DateTime,
     x$Sub_metering_1,
     ylab = "Energy sub metering",
     xlab = "",
     type="n")

legend("topright",
       c("Sub metering 1", "Sub metering 2", "Sub metering 3"), 
       lty = c(1, 1, 1),
       col = c("black", "red", "blue"))

lines(x$DateTime, x$Sub_metering_1)
par(col="red")
lines(x$DateTime, x$Sub_metering_2)
par(col="blue")
lines(x$DateTime, x$Sub_metering_3)
par(col="black")

# dev.off()
