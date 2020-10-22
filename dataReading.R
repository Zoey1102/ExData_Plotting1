# Loading the data
dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(dataUrl, "household_power_consumption.zip")
unzip("household_power_consumption.zip")
## Before reading, roughly estimate size of the dataset:
object.size("household_power_consumption.txt")

## Reading only data from the dates 2007-02-01 and 2007-02-02:
library(sqldf)
pwrcsm <- read.csv.sql("household_power_consumption.txt", 
                       sql = "select * from file where Date in ('1/2/2007','2/2/2007') ",
                       header = TRUE, sep = ";")

## Convert the Date and Time variables to Date/Time classes:
#pwrcsm$Date <- as.Date(pwrcsm$Date, "%d/%m/%Y")
### Confronted with the date and time zone problem for Time,
### So I give up these part, and turn to a concat below:

## Concatenate Date&Time, and convert it into Time Class:
pwrcsm$DateTime <- strptime(paste(pwrcsm$Date, pwrcsm$Time), 
                            "%d/%m/%Y %H:%M:%S", tz = "GMT")
