## plot4.R
## Exploratory Data Analysis – Course Project 1
## Plot 4: 2×2 multi-panel plot

## ── 1. Load data ──────────────────────────────────────────────────────────────
if (!file.exists("household_power_consumption.txt")) {
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, "power.zip")
  unzip("power.zip")
}

power <- read.table("household_power_consumption.txt",
                    sep = ";", header = TRUE,
                    na.strings = "?",
                    colClasses = c("character", "character",
                                   rep("numeric", 7)))

power <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))

power$datetime <- strptime(paste(power$Date, power$Time),
                           format = "%d/%m/%Y %H:%M:%S")

## ── 2. Create PNG ──────────────────────────────────────────────────────────────
png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

## Top-left: Global Active Power over time
plot(power$datetime, power$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

## Top-right: Voltage over time
plot(power$datetime, power$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

## Bottom-left: Energy sub-metering (3 lines)
plot(power$datetime, power$Sub_metering_1,
     type = "l",
     col  = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(power$datetime, power$Sub_metering_2, col = "red")
lines(power$datetime, power$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col    = c("black", "red", "blue"),
       lty    = 1,
       bty    = "n")   # no box around legend (matches reference)

## Bottom-right: Global Reactive Power over time
plot(power$datetime, power$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()
message("plot4.png written.")
