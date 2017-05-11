##run EDA Week1 Dataprep.R

##plot3
with(data2,plot(dt,Sub_metering_1,type="n",xlab="",ylab="Energy sub metering"))
with(data2,points(dt,Sub_metering_1,type="l"))
with(data2,points(dt,Sub_metering_2,type="l",col="red"))
with(data2,points(dt,Sub_metering_3,type="l",col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=1,col=c("black","red","blue"),cex=0.6)
dev.copy(png,"plot3.png")
dev.off()