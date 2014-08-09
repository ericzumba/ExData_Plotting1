x <- loadCached(cacheable, "household_power_consumption.txt")
x$Global_active_power <- as.numeric(x$Global_active_power)
# png("plot1.png")
hist(
  (x$Global_active_power / 500), 
  breaks = 15, 
  xlab = "Global Active Power (kilowatts)", 
  col = "red", 
  main = "Global Active Power"
)
# dev.off()



