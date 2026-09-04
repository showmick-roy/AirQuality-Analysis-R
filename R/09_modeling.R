# Prepare modeling data
model_data <- airquality_clean[, c("Ozone", "Temp", "Wind", "Solar.R", "Temp_Wind")]
head(model_data)
colSums(is.na(model_data))

# Train/Test Split

set.seed(123)

n <- nrow(model_data)

train_index <- sample(1:n, size = 0.8 * n)

train_data <- model_data[train_index, ]
test_data  <- model_data[-train_index, ]

nrow(train_data)
nrow(test_data)

# Observation:
# The dataset was randomly divided into 80% training data and 20% testing data.
# The training data will be used to build the model, while the testing data
# will be used later to evaluate its predictions.


# Build the Multiple Linear Regression Model

model1 <- lm(Ozone ~ Temp + Wind + Solar.R,
             data = train_data)


summary(model1)

# Observation:
# The multiple linear regression model explains about 45.73% of the variation
# in Ozone. Temperature has a significant positive effect on Ozone, while Wind
# has a significant negative effect and Solar.R has a significant positive effect.
# Overall, the model is statistically significant (p < 0.001).


# Make Predictions
predictions <- predict(model1, newdata = test_data)
head(predictions)


# Observation:
# The model generated Ozone predictions for the unseen test data.
# The predicted values vary considerably, with some predictions close to
# the expected Ozone range while others are negative, such as -14.18.
# This shows that the model's predictions will need to be evaluated further.


# Compare Actual vs Predicted Ozone

comparison <- data.frame(
  Actual = test_data$Ozone,
  Predicted = predictions
)

head(comparison)

# Observation:
# Observation:
# The predicted Ozone values are sometimes close to the actual values,
# but there are also large differences. For example, an actual value of
# 7 was predicted as 44.08, and an actual value of 6 was predicted as
# -14.18. This indicates that the model does not predict every observation accurately.

# Build an Improved Model

Ozone ~ Temp + Wind + Solar.R + Temp_Wind

model2 <- lm(Ozone ~ Temp + Wind + Solar.R + Temp_Wind,
             data = train_data)

summary(model2)

# Observation:
# The improved model explains 56.24% of the variation in Ozone,
# increasing the R-squared from 45.73% in model1 to 56.24% in model2.
# Temp_Wind is statistically significant (p < 0.001), indicating that
# the interaction between Temperature and Wind contributes meaningfully
# to predicting Ozone. Overall, model2 is statistically significant.

# Save Models and Predictions

# Predictions from Model 1
pred_model1 <- predict(model1, newdata = test_data)
# Predictions from Model 2
pred_model2 <- predict(model2, newdata = test_data)

model_results <- data.frame(
  Actual = test_data$Ozone,
  Model1_Predicted = pred_model1,
  Model2_Predicted = pred_model2
)

head(model_results)

# Observation
# Both Model 1 and Model 2 generate predictions that differ from the actual Ozone values.
# Model 2 generally gives more reasonable predictions for these test observations.
# Model 1 has some large errors, such as predicting -14.18 when the actual value is 6.
# Model 2 also has errors, but its predictions are generally closer to the actual values.
# Therefore, Model 2 appears to perform better than Model 1 on these sample test observations.

# Model Evaluation Code

# MAE
mae_model1 <- mean(abs(model_results$Actual - model_results$Model1_Predicted))
mae_model2 <- mean(abs(model_results$Actual - model_results$Model2_Predicted))

# RMSE
rmse_model1 <- sqrt(mean((model_results$Actual - model_results$Model1_Predicted)^2))
rmse_model2 <- sqrt(mean((model_results$Actual - model_results$Model2_Predicted)^2))

# R-squared
r2_model1 <- 1 - sum((model_results$Actual - model_results$Model1_Predicted)^2) /
  sum((model_results$Actual - mean(model_results$Actual))^2)

r2_model2 <- 1 - sum((model_results$Actual - model_results$Model2_Predicted)^2) /
  sum((model_results$Actual - mean(model_results$Actual))^2)

# Display results
model_metrics <- data.frame(
  Model = c("Model 1", "Model 2"),
  MAE = c(mae_model1, mae_model2),
  RMSE = c(rmse_model1, rmse_model2),
  R2 = c(r2_model1, r2_model2)
)

model_metrics

# Observation
# Model 2 performs better than Model 1 because it has a lower MAE (13.69 vs 14.38)
# and lower RMSE (18.90 vs 20.29), indicating smaller prediction errors.
# Model 2 also has a higher R² (0.586 vs 0.523), meaning it explains more
# variation in Ozone values. Therefore, Model 2 is the better-performing model.


# | Metric                            | Complete one-line definition                                                                                                                                                  | Better value |
#   | --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
#   | **MAE (Mean Absolute Error)**     | Measures the **average absolute difference between the actual Ozone values and the predicted Ozone values**, showing how far predictions are from the real values on average. | **Lower**    |
#   | **RMSE (Root Mean Square Error)** | Measures the **square root of the average squared difference between actual and predicted Ozone values**, giving **more importance to large prediction errors**.              | **Lower**    |
#   | **R² (R-squared)**                | Measures the **proportion of variation in the actual Ozone values that is explained by the model's predictions**, indicating how well the model fits the data.                | **Higher**   |



# Compare the Models


if (mae_model2 < mae_model1 &&
    rmse_model2 < rmse_model1 &&
    r2_model2 > r2_model1) {
  
  print("Model 2 performs better than Model 1.")
  
} else {
  
  print("Model 1 performs better than Model 2.")
}

# Final Observation
# Model 2 performs better than Model 1 on the test data.
# It has lower MAE and RMSE, indicating smaller prediction errors,
# and a higher R², indicating that it explains more variation in Ozone.
# Therefore, Model 2 is selected as the better-performing model.

# Final Plot: Actual vs Predicted Ozone

plot(
  model_results$Actual,
  model_results$Model1_Predicted,
  main = "Actual vs Predicted Ozone",
  xlab = "Actual Ozone",
  ylab = "Predicted Ozone",
  pch = 19,
  col = "skyblue",
  lwd = 2
)

points(
  model_results$Actual,
  model_results$Model2_Predicted,
  pch = 19,
  col = "tomato",
  lwd = 02
)

abline(0, 1, lty = 2)

legend(
  "topleft",
  legend = c("Model 1", "Model 2", "Perfect Prediction"),
  pch = c(19, 19, NA),
  lty = c(NA, NA, 2)
)

# Final Observation
# The Actual vs Predicted plot shows that Model 2's predictions are generally
# closer to the perfect prediction line than Model 1.
# This visually supports the evaluation results, where Model 2 has lower MAE
# and RMSE and higher R². Therefore, Model 2 provides better Ozone predictions
# for the test data from the cleaned airquality dataset.