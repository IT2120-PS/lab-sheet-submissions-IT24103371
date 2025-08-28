# setting directory
setwd("C:\\Users\\it24103371\\Desktop\\IT24103371")

#1. Importing data set
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep = ",")

#2. define the brakes (no. of clases we are going to brake the plot to)
# 20=min, 70=max, 10 bars
brakes = seq(20,70, length = 10)

#2. creating the histogram
Hist<- 
hist (Delivery_Times$Delivery_Time_.minutes. ,
      main = "Histogram of Delivery Times",
      brakes,
      right = FALSE)
#4. get the cumulative frequencies
freq <- Hist$counts
cum_freq <- cumsum(freq)
# create a null value
new <- c()

for(i in 1: length(brakes))
  if (i==1){
    new[i]= 0
  }else{
    new[i]= cum_freq[i-1]
  }
# draw the ogive
plot(brakes, new, type = "l", main = "cumulative frequency polygon (ogive) for the data ", 
     ylim = c(0,max(cum_freq)))

