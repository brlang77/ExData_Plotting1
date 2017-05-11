
##Run EDA Week1 Dataprep.R

##Plot 1
hist(data2$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,"plot1.png")
dev.off()