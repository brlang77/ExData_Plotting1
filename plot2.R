##run EDA Week1 Dataprep.r

##Plot2
with(data2,plot(dt,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.copy(png,"plot2.png")
dev.off()