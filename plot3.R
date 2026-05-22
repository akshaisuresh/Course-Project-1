## plot3.R
## Exploratory Data Analysis – Course Project 1
## Plot 3: Energy sub-metering over time (3 lines + legend)

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
png("plot3.png", width = 480, height = 480)

# Base plot with Sub_metering_1
plot(power$datetime, power$Sub_metering_1,
     type = "l",
     col  = "black",
     xlab = "",
     ylab = "Energy sub metering")

# Add Sub_metering_2 (red)
lines(power$datetime, power$Sub_metering_2, col = "red")

# Add Sub_metering_3 (blue)
lines(power$datetime, power$Sub_metering_3, col = "blue")

# Legend
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col    = c("black", "red", "blue"),
       lty    = 1)

dev.off()
message("plot3.png written.")
