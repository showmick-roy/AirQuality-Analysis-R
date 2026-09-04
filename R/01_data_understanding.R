# Import data

data("airquality")
airquality

# what is this data?
head(airquality)
tail(airquality)

# how big is the dataset?
dim(airquality)
nrow(airquality)
ncol(airquality)

# check the column name
names(airquality)

# understand the structure 
str(airquality)

summary(airquality)


# missing value 
is.na(airquality)
colSums(is.na(airquality))


# investigate 
airquality$Ozone

summary(airquality$Ozone)
mean(airquality$Ozone)
median(airquality$Ozone)
min(airquality$Ozone,na.rm = TRUE)
max(airquality$Ozone,na.rm = TRUE)



airquality$Solar.R

summary(airquality$Solar.R)
mean(airquality$Solar.R)
median(airquality$Solar.R)
min(airquality$Solar.R,na.rm = TRUE)
max(airquality$Solar.R,na.rm = TRUE)

airquality$Wind

summary(airquality$Wind)
mean(airquality$Wind)
median(airquality$Wind)
min(airquality$Wind,na.rm = TRUE)
max(airquality$Wind,na.rm = TRUE)


airquality$Temp


summary(airquality$Temp)
mean(airquality$Temp)
median(airquality$Temp)
min(airquality$Temp,na.rm = TRUE)
max(airquality$Temp,na.rm = TRUE)

airquality$Month

summary(airquality$Month)
mean(airquality$Month)
median(airquality$Month)
min(airquality$Month,na.rm = TRUE)
max(airquality$Month,na.rm = TRUE)

airquality$Day

summary(airquality$Day)
mean(airquality$Day)
median(airquality$Day)
min(airquality$Day,na.rm = TRUE)
max(airquality$Day,na.rm = TRUE)


# Inital Observations

# Observation_01:

# the dataset contains 153 and 6 colums

# Observation_02:

# Ozone and solar.r have missing values

# Observations_03

# wind , temp, month and day do not containg missing values

# Observations_04:

# ozone and solar.r have 37 and 7 missing value

?airquality


# =========================
# DATA DICTIONARY
# =========================

# This dataset contains daily air-quality measurements
# in New York from May to September 1973.


# Ozone: numeric — ozone concentration measured in parts per billion (ppb)

# Solar.R: numeric — solar radiation measured in Langleys

# Wind: numeric — wind speed measured in miles per hour (mph)

# Temp: numeric — temperature measured in degrees Fahrenheit (°F)

# Month: numeric — month number (1–12)

# Day: numeric — day of the month (1–31)


# =========================
# OBSERVATIONS
# =========================

# Observation 1:
# The dataset contains daily air-quality observations
# from New York during May to September 1973.

# Observation 2:
# Ozone, solar radiation, wind, and temperature
# describe environmental conditions for each day.

# Observation 3:
# Month and Day identify when each daily observation
# was recorded.
