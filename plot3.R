house <- read.table('household_power_consumption.txt',sep=';',header=TRUE,colClasses=c(rep("character",2),rep("numeric",7)),dec='.',na.strings='?',stringsAsFactors=FALSE)
hh <- house[house[,1]=="1/2/2007"|house[,1]=="2/2/2007",]
png(filename = "plot3.png")
plot(hh[,7],type='l',ylab="Energy sub metering")
lines(hh[,8],type='l',col='red')
lines(hh[,9],type='l',col='blue')
legend("topright", pch = '---', col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()
