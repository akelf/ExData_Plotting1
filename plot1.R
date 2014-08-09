## Project 1 Plot 1

## Code common to all four plots is in the file projectfunction.R
## source the file here to run that code to download the data file, load the necessary data, 
## and process the date and time

source("projectfunction.R")

## Open the png graphics device for plot1.png as PNG with width 480 pixels height 480 pixels

png("plot1.png", height=480, width=480, units = 'px')

## Create a histogram for the data field Global_active_power, color the data bars red, set the main title and the x axes title

hist(powerdata$Global_active_power,main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)") 

## close the graphics device
dev.off() 

