## Project 1 Plot 3

## Code common to all four plots is in the file projectfunction.R
## source the file here to run that code to download the data file, load the necessary data, 
## and process the date and time

source("projectfunction.R")

## Open the png graphics device for plot3.png as PNG with width 480 pixels height 480 pixels

png("plot3.png", height=480, width=480, units = 'px')

## Create the plot elements 
plot(powerdata$timestamp,powerdata$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="  ")
lines(powerdata$timestamp,powerdata$Sub_metering_2,col="red")
lines(powerdata$timestamp,powerdata$Sub_metering_3,col="blue")
title(xlab=" ")
legend("topright",  c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), cex = 1, lwd = 1)
## close the graphics device
dev.off() 
