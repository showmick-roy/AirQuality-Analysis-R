# create new dataset

airquality_clean <- airquality
airquality_clean

# missing values 
# how maney row have missing values 

complete.cases(airquality_clean)
sum(!complete.cases(airquality_clean))

airquality_clean[!complete.cases(airquality_clean), ]

# Observation:
# Missing values are present only in Ozone and Solar.R.
# Wind, Temp, Month, and Day have no missing values.

# What should we do with the missing values?
summary(airquality_clean$Ozone)
summary(airquality_clean$Solar.R)

# Cleaning decision:
# Ozone and Solar.R contain missing values.
# We will use the median to replace the missing values.
# Median is chosen because it is less sensitive to extreme values
# than the mean.


# replace the missing value with median 

# Ozone
median(airquality_clean$Ozone,na.rm = TRUE)
is.na(airquality_clean$Ozone)
airquality_clean$Ozone[is.na(airquality_clean$Ozone)] <- 31.5

sum(is.na(airquality_clean$Ozone))

# Solor.R

median(airquality_clean$Solar.R,na.rm = TRUE)
is.na(airquality_clean$Solar.R)
airquality_clean$Solar.R[is.na(airquality_clean$Solar.R)] <- 205

sum(is.na(airquality_clean$Solar.R))

# after cleaning missing value 

sum(is.na(airquality_clean))
summary(airquality_clean)


