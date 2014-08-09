x <- loadCached(cacheable, "household_power_consumption.txt")
x$Global_active_power <- as.numeric(x$Global_active_power)

x$DateTime <- as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
plot(x$DateTime, 
     (x$Global_active_power / 500), type="l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)
dev.off()