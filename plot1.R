file <- "household_power_consumption.txt"
powerconsum<- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdata <- powerconsum[powerconsum$Date %in% c("1/2/2007", "2/2/2007"),]

globalactivepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()