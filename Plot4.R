dataset <- "C:/Users/parid/Downloads/household_power_consumption.txt"
data <- read.table(dataset, sep=";",header=TRUE)
subsetofdata <- subset(data,data$Date %in% c("1/2/2007","2/2/2007") )
names(subsetofdata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

subsetofdata$Date <- as.Date(subsetofdata$Date, format="%d/%m/%Y")
subsetofdata$Time<- strptime(subsetofdata$Time, format="%H:%M:%S")
globalActivePower <- as.numeric(subsetofdata$Global_active_power)
Sub_metering_1 <- as.numeric(subsetofdata$Sub_metering_1)
Sub_metering_2 <- as.numeric(subsetofdata$Sub_metering_2)
Sub_metering_3 <- as.numeric(subsetofdata$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

