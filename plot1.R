source("loaddata.R")

if(is.null(data))
  data <- loaddata()
  
png("plot1.png")
  
hist(data$Global_active_power,main="Global Active Power",
       xlab="Global Active Power (kilowatts)", ylab="Frequency",
       col="red")
  
dev.off()
