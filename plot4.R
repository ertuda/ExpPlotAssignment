house <- read.table('household_power_consumption.txt',sep=';',header=TRUE,colClasses=c(rep("character",2),rep("numeric",7)),dec='.',na.strings='?',stringsAsFactors=FALSE)
hh <- house[house[,1]=="1/2/2007"|house[,1]=="2/2/2007",]
png(filename = "plot4.png")
par(mfrow=c(2,2))
plot(hh[,3],type='l',ylab='Global Active Power')
plot(hh[,5],type='l',ylab='Voltage',xlab='datetime')
plot(hh[,7],type='l',ylab="Energy sub metering")
lines(hh[,8],type='l',col='red')
lines(hh[,9],type='l',col='blue')
legend("topright", pch = '---', col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
plot(hh[,4],type='l',ylab='Global_reactive_power',xlab='datetime')
dev.off()