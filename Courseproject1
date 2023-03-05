dataset <- "C:/Users/parid/Downloads/household_power_consumption.txt"
data <- read.table(dataset, sep=";",header=TRUE)
subsetofdata <- subset(data,data$Date %in% c("1/2/2007","2/2/2007") )
names(subsetofdata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subsetofdata1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower=as.numeric(subsetofdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
