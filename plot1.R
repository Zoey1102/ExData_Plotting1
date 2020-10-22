png("plot1.png", 
    width = 480, height = 480, units = "px") ## indeed, the default
hist(pwrcsm$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()