## Project 1 Plot 2

## Code common to all four plots is in the file projectfunction.R
## source the file here to run that code to download the data file, load the necessary data, 
## and process the date and time

source("projectfunction.R")

## Open the png graphics device for plot2.png as PNG with width 480 pixels height 480 pixels

png("plot2.png", height=480, width=480, units = 'px')

## Create the plot elements 
plot(powerdata$timestamp,powerdata$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="  ")
## close the graphics device
dev.off() 
