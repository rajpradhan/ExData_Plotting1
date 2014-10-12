source("loaddata.R")

if(is.null(data))
  data <- loaddata()

png("plot4.png")

par(mfrow=c(2,2))

plot(data$Time, data$Global_active_power,
     main="",
     ylab="Global Active Power (kilowatts)", xlab="",
     col="black", type="l")

plot(data$Time, data$Voltage,
     main="",
     ylab="Voltage", xlab="datetime",
     col="black", type="l")

plot(data$Time, data$Sub_metering_1, main="",
     xlab="", ylab="Energy sub metering",
     type="l", col="black")
lines(data$Time, data$Sub_metering_2,
      col="red")
lines(data$Time, data$Sub_metering_3,
      col="blue")
legend("topright", col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

plot(data$Time, data$Global_reactive_power,
     main="",
     ylab="Global_reactive_power", xlab="datetime",
     col="black", type="l")

dev.off()