png("plot3.png", 
    width = 480, height = 480, units = "px") ## indeed, the default
# Initialising the settings:
plot(pwrcsm$DateTime, pwrcsm$Sub_metering_1, 
     type = "l", xlab = "", ylab = "Energy sub metering")
# Adding the other 2 lines
points(pwrcsm$DateTime, pwrcsm$Sub_metering_2, type = "l", col = "red")
points(pwrcsm$DateTime, pwrcsm$Sub_metering_3, type = "l", col = "blue")
# Adding legend:
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black", "red", "blue"))
dev.off()