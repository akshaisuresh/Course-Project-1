## plot1.R
## Exploratory Data Analysis – Course Project 1
## Plot 1: Histogram of Global Active Power

## ── 1. Load data ──────────────────────────────────────────────────────────────
# Download if needed
if (!file.exists("household_power_consumption.txt")) {
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, "power.zip")
  unzip("power.zip")
}

# Read only the two dates of interest (2007-02-01 and 2007-02-02)
# to avoid loading all 2 million rows into memory at once.
# First pass: read header
header <- read.table("household_power_consumption.txt",
                     sep = ";", nrows = 1, stringsAsFactors = FALSE)

# Read full file (fast with colClasses)
power <- read.table("household_power_consumption.txt",
                    sep = ";", header = TRUE,
                    na.strings = "?",
                    colClasses = c("character", "character",
                                   rep("numeric", 7)))

# Subset to the two days
power <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))

# ── 2. Create PNG ──────────────────────────────────────────────────────────────
png("plot1.png", width = 480, height = 480)

hist(power$Global_active_power,
     col  = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.off()
message("plot1.png written.")
