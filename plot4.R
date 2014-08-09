## Project 1 Plot 4

## Code common to all four plots is in the file projectfunction.R
## source the file here to run that code to download the data file, load the necessary data, 
## and process the date and time

source("projectfunction.R")

## Open the png graphics device for plot4.png as PNG with width 480 pixels height 480 pixels

png("plot4.png", height=480, width=480, units = 'px')

## Create the plot elements
## Arrange four plots, in a 2 x 2 arrangment
par(mfrow=c(2,2))

## First plot
plot(powerdata$timestamp,powerdata$Global_active_power,type="l",ylab="Global Active Power",xlab="  ")

##Second plot
plot(powerdata$timestamp,powerdata$Voltage,type="l",ylab="Voltage",xlab="datetime")

##Third plot
plot(powerdata$timestamp,powerdata$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="  ")
lines(powerdata$timestamp,powerdata$Sub_metering_2,col="red")
lines(powerdata$timestamp,powerdata$Sub_metering_3,col="blue")
title(xlab=" ")
legend("topright",  c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), cex = 1, lwd = 1)

##Fourth plot
plot(powerdata$timestamp,powerdata$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

## close the graphics device
dev.off() 
