## Project 1 Plot 1

## Read the data file, restricting to just the dates 2007-02-01 to 2007-02-02
library(sqldf)
powerfile <- file("household_power_consumption.txt")
powerdata <- sqldf("Select * from powerfile where Date='1/2/2007' or Date='2/2/2007'", file.format = list(sep=";",header = TRUE))


## Open the png graphics device for plot1.png as PNG with width 480 pixels height 480 pixels

png("plot1.png", height=480, width=480, units = 'px')

## Create a histogram for the data field Global_active_power, color the data bars red, set the main title and the x axes title

hist(powerdata$Global_active_power,main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)") 

## close the graphics device
dev.off() 

