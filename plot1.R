house <- read.table('household_power_consumption.txt',sep=';',header=TRUE,colClasses=c(rep("character",2),rep("numeric",7)),dec='.',na.strings='?',stringsAsFactors=FALSE)
hh <- house[house[,1]=="1/2/2007"|house[,1]=="2/2/2007",]
png(filename = "plot1.png")
hist(hh[,3],col='red',main='Global Active Power',xlab='Global Active Power (kilowatts')
dev.off()
