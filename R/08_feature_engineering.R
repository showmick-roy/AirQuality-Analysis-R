# Create a proper Date

?as.Date()
?paste()

dates_text <- paste(1973, airquality_clean$Month,
                    airquality_clean$Day, sep = "-")

class(dates_text)


dates <- as.Date(dates_text)

class(dates)

# Observation :
# The Month and Day variables were separate, so they were combined
# with the year 1973 to create complete date values.
# paste() combined Year, Month, and Day into date strings such as
# "1973-5-1". These values initially had the character data type.
# as.Date() converted the character date strings into actual Date
# objects, which can be used for time-based analysis.


# Create Temperature Category

airquality_clean$Temp_Category <- cut(
  airquality_clean$Temp,
  breaks = c(-Inf,70,80,Inf),
  labels = c("Low","Medium","High"),
  right = FALSE
)

table(airquality_clean$Temp_Category)

# Observation:
# Most observations are in the High temperature category (73 observations).

# Create Wind Category
airquality_clean$Wind_Category <- cut(
  airquality_clean$Wind,
  breaks = c(-Inf, 10, 15, Inf),
  labels = c("Low Wind", "Medium Wind", "High Wind"),
  right = FALSE
)

table(airquality_clean$Wind_Category)

# Observation:
# Most observations are in the High temperature category (73 observations).


airquality_clean$Temp_Wind <- airquality_clean$Temp *
  airquality_clean$Wind

head(airquality_clean[, c("Temp", "Wind", "Temp_Wind")])

# Observation:
# Temp_Wind combines Temperature and Wind into one interaction feature.
# It represents how the effect of temperature and wind together may
# influence Ozone levels.

str(airquality_clean)
head(airquality_clean)
summary(airquality_clean)