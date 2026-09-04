# Detect Ozone Anomalies


# Find Q1 and Q3
Q1 <- quantile(airquality_clean$Ozone, 0.25)
Q3 <- quantile(airquality_clean$Ozone, 0.75)

# Calculate IQR
IQR_Ozone <- Q3 - Q1

IQR_Ozone

# Lower and upper boundaries
lower_bound <- Q1 - 1.5 * IQR_Ozone
upper_bound <- Q3 + 1.5 * IQR_Ozone

lower_bound
upper_bound


# Detect anomalies
ozone_anomalies <- airquality_clean[
  airquality_clean$Ozone < lower_bound |
    airquality_clean$Ozone > upper_bound,
]

ozone_anomalies


# Observation:
# Using the IQR method, 15 Ozone observations were identified as unusually high.
# The upper boundary is 83.5 ppb, while the lower boundary is -16.5 ppb.
# All detected anomalies are above the upper boundary, ranging from 84 to 168 ppb.



# Visualize the anomalies

boxplot(airquality_clean$Ozone,
        main = "Ozone Anomalies",
        ylab = "Ozone (ppb)",
        col = "tomato")

# Observation:
# The boxplot shows several Ozone observations above the upper whisker.
# These points represent unusually high Ozone values and support the
# anomalies identified using the IQR method.





table(ozone_anomalies$Month)
max(ozone_anomalies$Ozone)
ozone_anomalies[which.max(ozone_anomalies$Ozone), ]


# Final Observation:
# Most Ozone anomalies occurred in August (7 observations),
# followed by July (5 observations). May had 1 anomaly and
# September had 2 anomalies. The highest Ozone value was
# 168 ppb, recorded on August 25.