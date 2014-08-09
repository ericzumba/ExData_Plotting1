wow <- load("household_power_consumption.txt")
pimba <- wow[(wow$Date == "1/2/2007" | wow$Date == "2/2/2007"), ]
pimba$Global_active_power <- as.numeric(pimba$Global_active_power)
png("plot1.png")
hist(
  (pimba$Global_active_power / 500), 
  breaks = 15, 
  xlab = "Global Active Power (kilowatts)", 
  col = "red", 
  main = "Global Active Power"
)
dev.off()



