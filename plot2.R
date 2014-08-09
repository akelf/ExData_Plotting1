## Project 1 Plot 2

## Read the data file, restricting to just the dates 2007-02-01 to 2007-02-02
library(sqldf)
powerfile <- file("household_power_consumption.txt")
powerdata <- sqldf("Select * from powerfile where Date='1/2/2007' or Date='2/2/2007'", file.format = list(sep=";",header = TRUE))

## Combine the Date and Time fields to create a timestamp
powerdata$timestamp <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")

## Open the png graphics device for plot2.png as PNG with width 480 pixels height 480 pixels

png("plot2.png", height=480, width=480, units = 'px')

## Create the plot elements 
plot(powerdata$timestamp,powerdata$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="  ")
## close the graphics device
dev.off() 
