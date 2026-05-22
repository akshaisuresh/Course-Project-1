## plot2.R
## Exploratory Data Analysis – Course Project 1
## Plot 2: Global Active Power over Thu/Fri/Sat (line plot)

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

# Create a proper datetime column
power$datetime <- strptime(paste(power$Date, power$Time),
                           format = "%d/%m/%Y %H:%M:%S")

## ── 2. Create PNG ──────────────────────────────────────────────────────────────
png("plot2.png", width = 480, height = 480)

plot(power$datetime, power$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()
message("plot2.png written.")
