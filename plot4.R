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
png(file = "figure/plot4.png", width = 480, height = 480, res = 72)

# Plot the graphs
par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
fontsize <- 1.0

# The grath at the top left
plot(dataset$Datetime, dataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", cex = fontsize, cex.axis = fontsize, cex.lab = fontsize, cex.main = fontsize, cex.sub = fontsize)

# The graph at the top right
plot(dataset$Datetime, dataset$Voltage, type = "l", xlab = "", ylab = "Voltage", cex = fontsize, cex.axis = fontsize, cex.lab = fontsize, cex.main = fontsize, cex.sub = fontsize)

# The graph at the bottom left
plot(dataset$Datetime, dataset$Sub_metering_1, type = 'n', xlab = "", ylab = "Energy sub metering", col = "black", cex = fontsize, cex.axis = fontsize, cex.lab = fontsize, cex.main = fontsize, cex.sub = fontsize)
lines(dataset$Datetime, dataset$Sub_metering_1, col = "black", lty = 1)
lines(dataset$Datetime, dataset$Sub_metering_2, col = "red", lty = 1)
lines(dataset$Datetime, dataset$Sub_metering_3, col = "blue", lty = 1)
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, pch = NA, box.lwd = 0, cex = fontsize)

# The graph at the bottom right
plot(dataset$Datetime, dataset$Global_reactive_power, type = "l", xlab = "", ylab = "Global Reactive Power", cex = fontsize, cex.axis = fontsize, cex.lab = fontsize, cex.main = fontsize, cex.sub = fontsize)


# Close the device
dev.off()

