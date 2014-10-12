loaddata <- function() {
  txtfile <- "household_power_consumption.txt"
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  zipfile <- "exdata-data-household_power_consumption.zip"
  if(!file.exists(zipfile))
    download.file(url, zipfile)
  if(!file.exists(txtfile))
    unzip(zipfile, overwrite=TRUE)
  data <- read.table(txtfile,header=TRUE,sep=";",na="?")
  # convert date and time variables to Date/Time class
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  # filter data for the dates 2007-02-01 and 2007-02-02 only
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  data <- subset(data, Date %in% dates)
  
  return(data)
  
}