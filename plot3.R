source("loaddata.R")

if(is.null(data))
  data <- loaddata()

png("plot3.png")


plot(data$Time, data$Sub_metering_1, main="",
     xlab="", ylab="Energy sub metering",
     type="l", col="black")
lines(data$Time, data$Sub_metering_2,
      col="red")
lines(data$Time, data$Sub_metering_3,
      col="blue")
legend("topright", col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

dev.off()
