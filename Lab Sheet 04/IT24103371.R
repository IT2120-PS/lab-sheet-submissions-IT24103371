# setting directory
setwd("C:\\Users\\it24103371\\Desktop\\IT24103371")

#1. Importing data set
branch_data <- read.table("Exercise.txt", header=TRUE, sep = ",")

# 2. Identify the variable types
str(branch_data)

# 3. Boxplot of sales
boxplot(branch_data$Sales_X1, main= "Boxplot for sales", horizontal = TRUE, outline = TRUE)

# 4. Getting the 5 number summary for advertising
quantile(branch_data$Advertising_X2)

# 4. Getting the IQR (Inter Quartile Range) for advertising
IQR(branch_data$Advertising_X2)

# 5. Funtion to find outliers
find_outliers = function(x)  
{
Q1 = quantile(x, 0.25)  # 1st Quantile
Q3 = quantile(x, 0.75)  # 3rd Quantile
IQR = Q3 - Q1           # Inter Quartile Range
lower = Q1 - 1.5*IQR    # lower bound
upper = Q3 + 1.5*IQR    # upper bound
outliers = x[ x < lower | x > upper]
return(outliers)
}

# Check outliers in years
find_outliers(branch_data$Years_X3)
