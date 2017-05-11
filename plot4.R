##plot4
##run EDA Week1 Dataprep.R

##create plot
par(mfcol=c(2,2),mar= c(4,4,2,1))
##Plot2
with(data2,plot(dt,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
##plot3
with(data2,plot(dt,Sub_metering_1,type="n",xlab="",ylab="Energy sub metering"))
with(data2,points(dt,Sub_metering_1,type="l"))
with(data2,points(dt,Sub_metering_2,type="l",col="red"))
with(data2,points(dt,Sub_metering_3,type="l",col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=1,col=c("black","red","blue"),cex=0.6)
##plot4.3
with(data2,plot(dt,Voltage,type="l",xlab="datetime",ylab="Voltage"))
##plot4.4
with(data2,plot(dt,Global_reactive_power,type="l",xlab="datetime"))
dev.copy(png,"plot4.png")
dev.off()