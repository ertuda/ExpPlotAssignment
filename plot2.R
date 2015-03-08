house <- read.table('household_power_consumption.txt',sep=';',header=TRUE,colClasses=c(rep("character",2),rep("numeric",7)),dec='.',na.strings='?',stringsAsFactors=FALSE)
hh <- house[house[,1]=="1/2/2007"|house[,1]=="2/2/2007",]
png(filename = "plot2.png")
plot(hh[,3],type='l',ylab='Global Active Power (kilowatts)')
dev.off()
