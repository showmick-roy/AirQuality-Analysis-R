# Understand the existing time information

unique(airquality_clean$Month)
unique(airquality_clean$Day)


# How does Ozone change across the days in the dataset?
dates <- seq(from = as.Date("1973-05-01"),
             to=as.Date("1973-09-30"),by ="day")

plot(dates,
     airquality_clean$Ozone,
     main = "Showing change",
     xlab = "Dates",
     ylab =  "Ozone",
     col = "tomato",
     lwd = 2)

# Observation:
# from May to September 1973.
# Most Ozone values are relatively low, but several high values occur,
# including an observation around 170 ppb.
# The plot does not show a simple continuous increasing or decreasing
# trend in Ozone over time.

# monthly patterns
# Does Ozone behave differently in May, June, July, August, and September?

boxplot(Ozone ~ Month,data = airquality_clean,
        col = "darkblue",
        lwd = 2)

# Observation 1:
# July has the highest median Ozone concentration,
# while September has the lowest median.

# Observation 2:
# Ozone shows considerable variation across the months,
# with July having the greatest overall range.

# Observation 3:
# Several potential outliers are present, particularly in June
# and September. August contains the highest outlier,
# at approximately 167 ppb.

# time series 

?ts()
ozone_ts <- ts(airquality_clean$Ozone,
               start = c(1973, 1),
               frequency = 365)

ozone_ts

start(ozone_ts)
end(ozone_ts)
frequency(ozone_ts)


# Observation:
# The Ozone values were converted into a time-series object using ts().
# Since the data contains daily observations, a frequency of 365 was used
# to represent the daily time structure of the year 1973.
# The time series contains 153 observations, covering the available
# May–September 1973 data.

plot(ozone_ts,
     main = "Daily Obserbations of Ozone",
     xlab = "Evryday Obserbation",
     ylab = "Ozone (ppd)",
     col = "tomato",
     lwd = 2)

# Observation:
# The time-series plot shows that Ozone varies considerably across
# the observation period. Most values are relatively low, but several
# high spikes occur, with the highest value around 168 ppb.
# No clear continuous increasing or decreasing trend is visible.
# Ozone fluctuates considerably, with higher values appearing in
# some middle portions of the observation period.



# Moving Average
?filter()

moving_average <- stats::filter(ozone_ts,rep(1/7,7),sides = 2)
moving_average

# Observation:
# The first and last three observations contain NA because a 7-day
# centered moving average requires three observations before and
# three observations after each point. These observations are not
# available at the beginning and end of the dataset.

plot(ozone_ts,
     main = "Ozone with 7-Day Moving Average",
     xlab = "Days",
     ylab = "Ozone (ppb)",
     col = "tomato",
     lwd = 1)

lines(moving_average,
      col = "skyblue",
      lwd = 2)

# Observation:
# The 7-day moving average smooths the daily fluctuations in Ozone.
# Compared with the original Ozone values, the moving average makes
# the broader pattern easier to see, while reducing the effect of
# short-term spikes.



