##time
library("stringr")
d=read.table(file="ISIIS201405291242.txt", sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1", stringsAsFactors=FALSE,quote="\"", check.names=FALSE, na.strings="9999.99")
names(d)
date=scan(file="ISIIS201405291242.txt", what="character", skip=1, nlines=1, quiet=TRUE)
date=date[2]
date
mm=str_sub(string=date, start=1, end=2)
dd=str_sub(string=date, start=4, end=5)
typeof(dd)
dd=as.numeric(dd)
yy=str_sub(string=date, start=7, end=8)
date=str_c(mm,dd,yy, sep="/")
date
dateNextDay=str_c(mm,as.character(dd+1), yy, sep="/")

d$hour=as.numeric(str_sub(d$Time, 1,2))
d$min=as.numeric(str_sub(d$Time, 4,5))
d$sec=as.numeric(str_sub(d$Time, 7, 11))
d$Time=str_c(d$hour, d$min,d$sec, sep=":")
d$Time
d$date=date
d$dateTime=str_c(d$date, d$Time, sep=" ")
d$dateTime=as.POSIXct(strptime(d$dateTime, format="%m/%d/%y %H:%M:%OS",tz="America/New_York"))
d$dateTime




