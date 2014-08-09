# cacheable <- makeCacheableData()
x <- loadCached(cacheable, "household_power_consumption.txt")
# png("plot1.png")
hist(
  (x$Global_active_power), 
  breaks = 15, 
  xlab = "Global Active Power (kilowatts)", 
  col = "red", 
  main = "Global Active Power"
)
# dev.off()



