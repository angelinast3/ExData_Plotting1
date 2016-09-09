file <- "household_power_consumption.txt"
powerconsum<- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- powerconsum[powerconsum$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalactivepower <- as.numeric(subsetdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalactivepower, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
dev.off()