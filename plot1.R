
file="C:/Users/Alba Fornells/Desktop/Coursera/Explonatory data/week 1/household_power_consumption.txt"
data=read.table(file,sep=';',dec='.')

data=read.table("C:/Users/Alba Fornells/Desktop/Coursera/Explonatory data/week 1/household_power_consumption_v2.txt")

nrow(href)

data=read.csv("C:/Users/Alba Fornells/Desktop/Coursera/Explonatory data/week 1/DATA.csv", sep=",")
nrow(data)
ncol(data)
strptime(data,"%H:%M:%S")
as.Date(data, "%m/%d/%y")

plot1=hist(data$Global_active_power,main="Global Active Power", xlab="Global Active Power (kilowatts)" ,ylab="Frequency" ,col="red")

Plot2=
