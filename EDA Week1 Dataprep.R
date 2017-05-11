##Exploratory Data Analysis
##Week 1 Assignment
##  Author:  brlang77
## date:  May 8, 2017

##  Estimated memory needed for file with 2M rows and 9 columns ~143MB

##Data source from UC Irvine Machine Learning Repository, on Electric Power Consumption

getwd()
setwd("~/Coursera/Exploratory Data Analysis")
url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,destfile="EPC.zip")
unzip("EPC.zip")
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

str(data)  ##check formats, need to change date and time formats
head(data)  ## appears to be day/month/year
##data$Time<-strptime(data$Time,"%H:%M:%S")
data$dt<-strptime(paste(data$Date,data$Time),"%d/%m/%Y%H:%M:%S")
data$Date<-as.Date(data$Date,'%d/%m/%Y')


t1<-as.Date("2007-02-01")
t2<-as.Date("2007-02-02")

data2<-data[data$Date %in% t1:t2,]  ##get 2 days data (2007-02-01 and 2007-02-02)
rm(data)
