setwd('C:/Users/Alba Fornells/Desktop/Coursera/Explonatory data')

file="C:/Users/Alba Fornells/Desktop/Coursera/Explonatory data/week 1/household_power_consumption.txt"
data=read.table(file,sep=';',dec='.',header=T,na.string='?')
dates=c("1/2/2007", "2/2/2007")
databu=data

data=databu
data=data[which(data$Date %in% dates),]

nrow(data)
ncol(data)
# data$Time=strptime(data$Time, "%H:%M:%S")
# data$Date=as.Date(data$Date, "%d/%m/%Y")
data$DateTime=apply(data[,c('Date','Time')],1,function(x){paste(x[1],x[2],sep=' ')})
data$DateTime=strptime(data$DateTime,'%d/%m/%Y %H:%M:%S')

Sys.setlocale("LC_TIME", "English")

png('plot2.png')
plot2=plot(data$DateTime,data$Global_active_power, type="l", 
           ylab="Global Active Power (kilowatts)",xlab='')
dev.off()

