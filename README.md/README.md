# Air Quality Analysis using R

An end-to-end Data Science project using R to analyze air quality data investigate relationships between variables, detect anomalies and build predictive models for ozone concentration.

---

## 📌 Project Overview

This project uses Rs built-in airquality dataset to perform a Data Science workflow:

Data Understanding → Data Quality → Data Cleaning → EDA → Statistical Analysis → Time Analysis → Anomaly Detection → Feature Engineering → Modeling → Model Evaluation

The main goal is to understand which environmental factors are related to ozone concentration and evaluate how well ozone levels can be predicted using statistical models.

---

## 🎯 Objectives

- Understand the air quality dataset

- Identify. Handle missing values

- Explore the distribution of ozone concentration

- Analyze relationships between ozone and environmental variables

- Perform correlation and multiple linear regression analysis

- Analyze the time dimension of the data

- Detect unusual ozone observations

- Create a meaningful interaction feature

- Build predictive models

- Compare model performance using MAE, RMSE and R²

- Create a reproducible R Markdown report

---

## 📊 Dataset

The project uses Rs built-in airquality dataset.

The dataset contains air quality measurements in New York from May to September 1973.

### Variables

| Variable | Description |

|---|---|

| Ozone | Ozone concentration |

| Solar.R | Solar radiation |

| Wind | Wind speed |

| Temp | Temperature |

| Month | Month |

| Day | Day of the month |

---

## 🛠️ Technologies Used

- R

- RStudio

- R Markdown

- Base R

- modeling

- Data visualization

---

## 🔬 Project Workflow

### 1. Data Understanding

The dataset was investigated using:

- Number of observations

- Number of variables

- names

- Data types

- Summary statistics

- Missing-value investigation

### 2. Data Quality

The project checked:

- Missing values

- Complete cases

- Data consistency

- outliers

### 3. Data Cleaning

Missing values in Ozone and Solar.R were handled using imputation.

The cleaned dataset was stored separately so that the original data remained unchanged.

### 4. Exploratory Data Analysis

The project explored:

- Ozone distribution

- Ozone outliers

- Ozone vs Temperature

- Ozone vs Wind

- Ozone, vs Solar Radiation

### 5. Statistical Analysis

Correlation analysis showed:

- Ozone and Temperature: 0.6008

- Ozone and Wind: -0.5319

- Ozone and Solar Radiation: 0.2955

A multiple linear regression model was also developed using:

- Temperature

- Wind

- Solar Radiation

### 6. Time Analysis

The project investigated the ozone observations using:

- Time-based visualization

- Moving averages

- Autocorrelation (ACF)

The dataset only covers May–September 1973 so term yearly forecasting was not treated as a valid objective.

### 7. Anomaly Detection

The IQR method was used to identify ozone observations.

The upper IQR boundary was approximately:

83.5 ppb

The highest observed ozone value was:

168 ppb

### 8. Feature Engineering

A meaningful interaction feature was created:

```r

Temp_Wind = Temp × Wind

```
9. Predictive Modeling

Two linear regression models were developed.

Model 1

Ozone ~ Temp + Wind + Solar.R

Model 2

Ozone ~ Temp + Wind + Solar.R + Temp_Wind
10. Model Evaluation

The models were evaluated using:

MAE
RMSE
R²
Model	MAE	RMSE	R²
Model 1	14.38	20.29	0.523
Model 2	13.69	18.90	0.586

Model 2 performed better across all three evaluation metrics.

📈 Key Findings
Temperature has a strong positive relationship with ozone concentration.
Wind has a negative relationship with ozone concentration.
Solar radiation has a weaker positive relationship with ozone.
Several unusually high ozone observations were detected.
Adding the Temp_Wind interaction feature improved model performance.
Model 2 achieved better MAE, RMSE, and R² than Model 1.


📁 Project Structure
AirQuality-Analysis_project/
│
├── R/
│   ├── 01_data_understanding.R
│   ├── 02_data_quality.R
│   ├── 03_data_cleaning.R
│   ├── 04_eda.R
│   ├── 05_statistical_analysis.R
│   ├── 06_time_analysis.R
│   ├── 07_anomaly_detection.R
│   ├── 08_feature_engineering.R
│   ├── 09_modeling.R
│   └── 10_model_evaluation.R
│
├── reports/
│   ├── air_quality_report.Rmd
│   └── air_quality_report.html
│
├── README.md
└── AirQuality-Analysis_project.Rproj
