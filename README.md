
# Exploratory Data Analysis – Course Project 1
 
## Introduction
 
This assignment uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/), a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set":
 
- **Dataset**: [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) [20Mb]
- **Description**: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
### Variables
 
| # | Variable | Description |
|---|---|---|
| 1 | **Date** | Date in format dd/mm/yyyy |
| 2 | **Time** | Time in format hh:mm:ss |
| 3 | **Global_active_power** | Household global minute-averaged active power (kilowatt) |
| 4 | **Global_reactive_power** | Household global minute-averaged reactive power (kilowatt) |
| 5 | **Voltage** | Minute-averaged voltage (volt) |
| 6 | **Global_intensity** | Household global minute-averaged current intensity (ampere) |
| 7 | **Sub_metering_1** | Kitchen energy sub-metering (watt-hour): dishwasher, oven, microwave |
| 8 | **Sub_metering_2** | Laundry room energy sub-metering (watt-hour): washing machine, tumble-drier, fridge, light |
| 9 | **Sub_metering_3** | Water-heater and air-conditioner energy sub-metering (watt-hour) |
 
---
 
## Repository Contents
 
| File | Description |
|---|---|
| `plot1.R` | R script that reads the data and generates `plot1.png` |
| `plot2.R` | R script that reads the data and generates `plot2.png` |
| `plot3.R` | R script that reads the data and generates `plot3.png` |
| `plot4.R` | R script that reads the data and generates `plot4.png` |
| `plot1.png` | Histogram of Global Active Power |
| `plot2.png` | Global Active Power over time (line plot) |
| `plot3.png` | Energy sub-metering over time (3-line plot with legend) |
| `plot4.png` | 2×2 multi-panel plot |
 
---
 
## How to Reproduce the Plots
 
1. Clone this repository:
```bash
git clone https://github.com/akshaisuresh/ExData_Plotting1.git
cd ExData_Plotting1
```
 
2. Source any of the plot scripts in R. Each script will **automatically download and unzip** the data if it is not already present in the working directory:
```r
source("plot1.R")   # → plot1.png
source("plot2.R")   # → plot2.png
source("plot3.R")   # → plot3.png
source("plot4.R")   # → plot4.png
```
 
> **Note:** Missing values in the dataset are coded as `?`. Only data from **2007-02-01** and **2007-02-02** is used for all plots.
 
---

## Plot Descriptions
 
The four plots that you will need to construct are shown below. 


### Plot 1 — Global Active Power (Histogram)
A histogram showing the frequency distribution of Global Active Power (kilowatts) across the two-day period, rendered in red using the base plotting system.


<img width="504" height="504" alt="image" src="https://github.com/user-attachments/assets/ace54b6a-9346-4e2e-a946-42f9fec82bd0" />

### Plot 2 — Global Active Power over Time
A line plot showing how Global Active Power (kilowatts) varies by day across Thursday–Saturday (2007-02-01 to 2007-02-02).

<img width="504" height="504" alt="image" src="https://github.com/user-attachments/assets/078406a5-98a4-464a-b1ad-1bc9aa89ad9d" />


### Plot 3 — Energy Sub-metering over Time
A line plot of all three sub-metering variables over time, with:
- **Black** = Sub_metering_1 (kitchen)
- **Red** = Sub_metering_2 (laundry room)
- **Blue** = Sub_metering_3 (water heater / AC)
A legend is included in the top-right corner.

<img width="504" height="504" alt="image" src="https://github.com/user-attachments/assets/eff9f5f3-4a20-4a5b-9656-2d0b17a71f25" />

### Plot 4 — Multi-panel Plot (2×2)
A 2×2 panel layout containing:
- **Top-left**: Global Active Power over time
- **Top-right**: Voltage over time
- **Bottom-left**: Energy sub-metering (same as Plot 3)
- **Bottom-right**: Global Reactive Power over time

<img width="504" height="504" alt="image" src="https://github.com/user-attachments/assets/5b359736-d9fb-478b-b209-7b93e1dc8813" />
