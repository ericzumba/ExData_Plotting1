x <- load("household_power_consumption.txt")
x$Global_active_power <- as.numeric(x$Global_active_power)

x$DateTime <- as.POSIXct(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")

plot(x$DateTime, x$Global_active_power, type="l")