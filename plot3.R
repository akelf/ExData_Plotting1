## Project 1 Plot 3

## Read the data file, restricting to just the dates 2007-02-01 to 2007-02-02
library(sqldf)
powerfile <- file("household_power_consumption.txt")
powerdata <- sqldf("Select * from powerfile where Date='1/2/2007' or Date='2/2/2007'", file.format = list(sep=";",header = TRUE))
