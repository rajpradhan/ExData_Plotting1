source("loaddata.R")

if(is.null(data))
  data <- loaddata()
  
png("plot2.png")
  
plot(data$Time, data$Global_active_power,main="",
       xlab="", ylab="Global Active Power (kilowatts)",
       type="l", col="black")
  
dev.off()
