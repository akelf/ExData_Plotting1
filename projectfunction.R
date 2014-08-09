## Code to download, unzip and load the data required for Project 1
## This file is sourced by the other four files that create the plots

## Orginal Data source
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

##Check if the data file is present and unzipped. If not download from the original source and unzip
if(!file.exists("household_power_consumption.txt")){
  download.file(fileUrl, "data_power.zip")
  unzip("data_power.zip")
}

## Read the data file, restricting to just the dates 2007-02-01 to 2007-02-02
library(sqldf)

powerfile <- file("household_power_consumption.txt")
powerdata <- sqldf("Select * from powerfile where Date='1/2/2007' or Date='2/2/2007'", file.format = list(sep=";",header = TRUE))


## Combine the Date and Time fields to create a timestamp for use in plot 2,3,4
powerdata$timestamp <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")
