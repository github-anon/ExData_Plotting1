#Please note you must use the command setwd() to set the working directory to the folder that contains the file household_power_consumption.txt
#for example:
#setwd("E:/Coursera/Data Science Track/Exploratory Data Analysis/exdata_data_household_power_consumption")

d<-read.table("household_power_consumption.txt", header = T, sep = ";", as.is = T)
d<-subset(d, d$Date == "1/2/2007" |  d$Date == "2/2/2007")
png(filename = "plot1.png")
hist(as.numeric(d$Global_active_power), col="red", main = "Global active power", xlab = "Global active power (kilowatts)", ylab = "Frequency")
dev.off()