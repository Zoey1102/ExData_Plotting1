png("plot2.png", 
    width = 480, height = 480, units = "px") ## indeed, the default
plot(pwrcsm$DateTime, pwrcsm$Global_active_power, type = "l",
     xlab = "", # To mute the xlab
     ylab = "Global Active Power (kilowatts)")
dev.off()
