## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Files

The files in this repo are as follows:

* download.file.R
  This R script downloads the dataset file above and unzip it.
* plot1.R
  This R script creates a png file "figure/plot1.png" that shows the histogram of the frequency of the "Global Active Power" for the 2007/2/1 and 2007/2/2 data.
* plot2.R
  This R script creates a png file "figure/plot2.png" that shows the "Global Active Power" data over the time period between 01/02/2007 0:00 and 02/02/2007 23:59.
* plot3.R
  This R script creates a png file "figure/plot3.png" that shows the "Energy Sub Metering" 1, 2 and 3 data over the time period between 01/02/2007 0:00 and 02/02/2007 23:59.
* plot4.R
  This R script creates a png file "figure/plot4.png" that contains 4 graphs showing:
    - Global Active Power
    - Voltage
    - Energy Sub Metering 1, 2 and 3
    - Global Reactive Power
  over the time period between 01/02/2007 0:00 and 02/02/2007 23:59.

## Plots

### Plot 1


![plot1](figure/plot1.png) 


### Plot 2

![plot2](figure/plot2.png) 


### Plot 3

![plot3](figure/plot3.png) 


### Plot 4

![plot4](figure/plot4.png) 

