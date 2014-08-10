###############################################
# Download the file
###############################################

# Use "Individual household electric power consumption Data Set" prepared by the tutor
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Downlaod the file
download.file(fileUrl, destfile = 'household_power_consumption.zip', method = 'curl')

# Unzip the file, which creates the file "household_power_consumption.txt"
unzip('household_power_consumption.zip')

# Delete the downloaded file
unlink('household_power_consumption.zip')