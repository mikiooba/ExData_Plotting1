require('sqldf')

# Use the file "household_power_consumption.txt", which can be downloaded using "download.file.R" script
filename <- "household_power_consumption.txt"

# Read the data for 2007-02-01 and 2007-02-02 to a data frame using the sqldf package
dataset <- read.csv2.sql(filename, sql = "select * from file where (Date = '1/2/2007' or Date = '2/2/2007')")

# Create datetime vector from the Date and Time columns
Datetime <- as.POSIXlt(paste(dataset$Date, dataset$Time), format = "%d/%m/%Y %H:%M:%S")

# Remove Date and Time columns add datetime vector to the dataset
dataset <- dataset[,!(names(dataset) %in% c("Date", "Time"))]
dataset <- cbind(Datetime, dataset)

# Create the png file device
png(file = "figure/plot2.png", width = 480, height = 480, res = 72)

# Plot the line graph
fontsize <- 1.0
plot(dataset$Datetime, dataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", cex = fontsize, cex.axis = fontsize, cex.lab = fontsize, cex.main = fontsize, cex.sub = fontsize)

# Close the device
dev.off()

