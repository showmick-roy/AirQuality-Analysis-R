# Simple Linear Regression
# How much does Ozone change when Temperature changes?

?lm()

model_temp <- lm(Ozone ~ Temp,data = airquality_clean)
model_temp

summary(model_temp)


# Observation:
# Temperature has a statistically significant positive relationship
# with Ozone (p < 2e-16).
# The regression coefficient for Temperature is 1.8443,
# meaning a 1°F increase in temperature is associated with an
# estimated 1.8443 ppb increase in Ozone.
# The model explains approximately 36.1% of the variation in Ozone (R² = 0.361).


model_Wind <- lm(Ozone ~ Wind,data = airquality_clean)
model_Wind

summary(model_Wind)

# Observation:
# Wind has a significant negative relationship with Ozone
# (coefficient = -4.3866, p < 0.05).
# For every 1-unit increase in Wind, the model predicts
# an average decrease of approximately 4.39 ppb in Ozone.
# The model explains approximately 28.29% of the variation
# in Ozone (R² = 0.2829).



model_Solar.R <- lm(Ozone ~ Solar.R,data = airquality_clean)
model_Solar.R

summary(model_Solar.R)

# Observation:
# Solar Radiation has a significant positive relationship with Ozone
# (coefficient = 0.0975, p < 0.05).
# For every 1-unit increase in Solar.R, the model predicts
# an average increase of approximately 0.0975 ppb in Ozone.
# The model explains approximately 8.73% of the variation
# in Ozone (R² = 0.0873).



# multiple linear regression.


model_mul_regression <- lm(
  Ozone ~ Temp + Wind + Solar.R,
  data = airquality_clean
)

model_mul_regression

summary(model_mul_regression)



# Multiple Linear Regression Observation:
# Temperature, Wind, and Solar.R all have statistically significant
# relationships with Ozone when considered together (p < 0.05).
#
# Temperature has a positive coefficient (1.23295), while Wind has
# a negative coefficient (-2.78709) and Solar.R has a positive
# coefficient (0.05696).
#
# The model explains approximately 47.21% of the variation in Ozone
# (R² = 0.4721).
#
# The overall regression model is statistically significant
# (F-test p-value < 2.2e-16).