#Please note you must use the command setwd() to set the working directory to the folder that contains the file household_power_consumption.txt
#for example:
#setwd("E:/Coursera/Data Science Track/Exploratory Data Analysis/exdata_data_household_power_consumption")

d<-read.table("household_power_consumption.txt", header = T, sep = ";", as.is = T)
d<-subset(d, d$Date == "1/2/2007" |  d$Date == "2/2/2007")
x_data <- paste(d$Date , d$Time, sep = ' ')
xy<-cbind.data.frame(x_data,d[7],d[8],d[9])
png(filename = "plot3.png")
plot(xy$x_data,xy$Sub_metering_1, type = "l",xaxt = "n",xlab="", ylab = "Energy sub metering")
points(xy$x_data,xy$Sub_metering_2,col="red", type = "l")
points(xy$x_data,xy$Sub_metering_3,col="blue", type = "l")
axis(1,labels=c("Thu","Fri","Sat"),at=c(1,1441,2881))
legend("topright",col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1)
dev.off()

