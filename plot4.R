png("plot4.png", 
    width = 480, height = 480, units = "px") ## indeed, the default

par(mfrow = c(2,2))

plot(pwrcsm$DateTime, pwrcsm$Global_active_power, type = "l",
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")

plot(pwrcsm$DateTime, pwrcsm$Voltage, type = "l",
     xlab = "datetime", 
     ylab = "Voltage")

plot(pwrcsm$DateTime, pwrcsm$Sub_metering_1, 
     type = "l", xlab = "", ylab = "Energy sub metering")
points(pwrcsm$DateTime, pwrcsm$Sub_metering_2, type = "l", col = "red")
points(pwrcsm$DateTime, pwrcsm$Sub_metering_3, type = "l", col = "blue")
legend("topright", inset=.02, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black", "red", "blue"),
       box.lty = 0) # invisible legend border

plot(pwrcsm$DateTime, pwrcsm$Global_reactive_power, type = "l",
     xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.off()