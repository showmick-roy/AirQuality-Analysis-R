 # what does the ozone look like?

hist(airquality_clean$Ozone,
     breaks = 10,
     main = "DISTRIBUTION OF OZONE",
     xlab = "Ozone (ppb)",
     ylab = "Frequency",
     col = "darkblue",  )

# Observation:
# The distribution of Ozone appears right-skewed.
# Most Ozone values are concentrated around 0 to 50 ppb.
# The histogram does not clearly show the presence of extreme values;
# potential outliers will be investigated using a boxplot.


boxplot(airquality_clean$Ozone,
        main = "Check potential outliers",
        xlab = NULL,
        ylab = "Ozone (ppb)",
        col = "darkred")


# Observation:
# The median Ozone value is approximately 30 to 35 ppb.
# There are potential outliers roughly between 100 and 150 ppb.
# The potential outliers are mainly on the right side of the distribution.

plot(airquality_clean$Temp,
     airquality_clean$Ozone,
     main = "Relationship between Ozone & Temperature",
     xlab = "Temperature",
     ylab = "Ozone",
     col = "darkgreen",
     lwd = 2
     )

# Observation:
# There appears to be a positive relationship between Temperature and Ozone.
# As Temperature increases, Ozone generally tends to increase.
# The relationship is not perfectly linear because the points are widely scattered.
# A few observations have unusually high Ozone values at higher temperatures.



plot(airquality_clean$Wind,
     airquality_clean$Ozone,
     main = "Relattonship between Wind & Ozone",
     xlab = "wind (mph)",
     ylab = "Ozone ",
     col = "hotpink",
     lwd = 2
)


# Observation:
# There appears to be a negative relationship between Wind and Ozone.
# As Wind Speed increases, Ozone generally tends to decrease.
# The relationship appears fairly noticeable, although the points are scattered.
# Some unusually high Ozone values occur at relatively low wind speeds.
plot(airquality_clean$Solar.R,
     airquality_clean$Ozone,
     main = "Relationship between Solar Radiation & Ozone",
     xlab = "solar radiation",
     ylab = "Ozone",
     col = "tomato",
     lwd = 2
  
)

# Observation:
# There appears to be a positive relationship between Solar Radiation and Ozone.
# As Solar Radiation increases, Ozone generally tends to increase.
# The relationship is fairly scattered, so it does not appear to be very strong.
# Some unusually high Ozone values occur at higher Solar Radiation levels.


?cor
# Correlation analysis

cor(airquality_clean$Ozone, airquality_clean$Temp)
cor(airquality_clean$Ozone, airquality_clean$Wind)
cor(airquality_clean$Solar.R, airquality_clean$Ozone)

# Observation:
# Temperature has a moderate positive correlation with Ozone (r = 0.6008).
# Wind has a moderate negative correlation with Ozone (r = -0.5319).
# Solar Radiation has a weak positive correlation with Ozone (r = 0.2955).
#
# These correlation results support the patterns observed
# in the scatter plots.
