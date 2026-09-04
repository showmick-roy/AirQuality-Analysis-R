<div align="center">

<img src="https://img.shields.io/badge/Language-R-276DC3?style=for-the-badge&logo=r&logoColor=white" />
<img src="https://img.shields.io/badge/Dataset-airquality%20(built--in)-orange?style=for-the-badge" />
<img src="https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge" />
<img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" />

# 🌫️ Air Quality Analysis using R

**An end-to-end Data Science project** — from raw environmental data to predictive modeling of ozone concentration.

*Exploring R's statistical ecosystem to uncover what drives air pollution.*

</div>

---

## 📌 Project Overview

This project uses R's built-in `airquality` dataset to perform a complete Data Science workflow on air quality measurements recorded in New York from **May to September 1973**.

The primary goal is to understand which environmental factors influence ozone concentration and build predictive models to estimate ozone levels.

### Workflow Pipeline

```
Data Understanding → Data Quality → Data Cleaning → EDA → Statistical Analysis
    → Time Analysis → Anomaly Detection → Feature Engineering → Modeling → Evaluation
```

---

## 🎯 Objectives

- Understand and explore the air quality dataset structure
- Identify and handle missing values through imputation
- Analyze distributions and relationships between environmental variables
- Perform correlation and multiple linear regression analysis
- Detect anomalous ozone observations using the IQR method
- Engineer meaningful interaction features
- Build and compare predictive models using MAE, RMSE, and R²
- Generate a reproducible R Markdown report

---

## 📊 Dataset

R's built-in `airquality` dataset — **153 daily observations** of air quality in New York, May–September 1973.

| Variable | Description | Unit |
|----------|-------------|------|
| `Ozone` | Ozone concentration *(target variable)* | ppb |
| `Solar.R` | Solar radiation | lang |
| `Wind` | Wind speed | mph |
| `Temp` | Temperature | °F |
| `Month` | Month of observation | 5–9 |
| `Day` | Day of the month | 1–31 |

---

## 📈 Key Findings

| Finding | Detail |
|---------|--------|
| 🌡️ Temperature | Strong **positive** correlation with ozone (r = **0.60**) |
| 💨 Wind | Strong **negative** correlation with ozone (r = **−0.53**) |
| ☀️ Solar Radiation | Moderate **positive** correlation with ozone (r = **0.30**) |
| 🚨 Anomaly Threshold | IQR upper boundary at **83.5 ppb** |
| ⚠️ Max Ozone Observed | **168 ppb** — significantly above threshold |
| 🏆 Best Model | Model 2 — with engineered `Temp × Wind` interaction feature |

---

## 🤖 Model Performance

Two linear regression models were developed and compared:

| Metric | Model 1 | Model 2 | Winner |
|--------|---------|---------|--------|
| **Features** | Temp + Wind + Solar.R | Temp + Wind + Solar.R + Temp×Wind | — |
| **MAE** | 14.38 | 13.69 | ✅ Model 2 |
| **RMSE** | 20.29 | 18.90 | ✅ Model 2 |
| **R²** | 0.523 | 0.586 | ✅ Model 2 |

> Model 2 outperformed Model 1 across all three metrics after adding the engineered `Temp_Wind` interaction feature.

---

## 🔬 Project Workflow

<details>
<summary><b>1. Data Understanding</b></summary>
<br>
Investigated dataset dimensions, variable names, data types, and summary statistics to understand the full structure before any analysis.
</details>

<details>
<summary><b>2. Data Quality Check</b></summary>
<br>
Checked for missing values, complete cases, data consistency, and potential outliers across all variables.
</details>

<details>
<summary><b>3. Data Cleaning</b></summary>
<br>
Missing values in <code>Ozone</code> and <code>Solar.R</code> were handled using <strong>imputation</strong>. The cleaned dataset was stored separately to preserve the original untouched data.
</details>

<details>
<summary><b>4. Exploratory Data Analysis (EDA)</b></summary>
<br>
Explored ozone distribution, outlier patterns, and pairwise relationships between ozone and: Temperature, Wind, and Solar Radiation.
</details>

<details>
<summary><b>5. Statistical Analysis</b></summary>
<br>
Performed full correlation analysis and developed a multiple linear regression model using Temperature, Wind, and Solar Radiation as predictors.
</details>

<details>
<summary><b>6. Time Analysis</b></summary>
<br>
Investigated ozone observations using time-based visualizations, moving averages, and autocorrelation (ACF). Note: yearly forecasting was not a valid objective as the dataset only spans May–September 1973.
</details>

<details>
<summary><b>7. Anomaly Detection</b></summary>
<br>
Applied the <strong>IQR method</strong> to identify unusual ozone observations. The upper IQR boundary was ~83.5 ppb; the maximum observed value was 168 ppb.
</details>

<details>
<summary><b>8. Feature Engineering</b></summary>
<br>
Created a meaningful interaction feature: <code>Temp_Wind = Temp × Wind</code>, capturing the combined atmospheric effect on ozone concentration.
</details>

<details>
<summary><b>9–10. Modeling & Evaluation</b></summary>
<br>
Built and evaluated two linear regression models using MAE, RMSE, and R². Model 2 (with the interaction term) performed better across all three metrics.
</details>

---

## 🛠️ Technologies Used

| Tool | Purpose |
|------|---------|
| **R 4.x** | Core programming language |
| **ggplot2** | Data visualization |
| **dplyr** | Data manipulation |
| **stats (Base R)** | Linear regression, correlation, ACF |
| **R Markdown** | Reproducible HTML report generation |
| **RStudio** | Development environment |

---

## 📁 Project Structure

```
AirQuality-Analysis-R/
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
```

---

## 🚀 How to Run

**1. Clone the repository**
```bash
git clone https://github.com/showmick-roy/AirQuality-Analysis-R.git
cd AirQuality-Analysis-R
```

**2. Open in RStudio**
```
Open → AirQuality-Analysis_project.Rproj
```

**3. Install required packages**
```r
install.packages(c("ggplot2", "dplyr", "rmarkdown"))
```

**4. Run scripts in order**
```
R/01_data_understanding.R  →  ...  →  R/10_model_evaluation.R
```

**5. Generate the full report**
```r
rmarkdown::render("reports/air_quality_report.Rmd")
```

---

## 👤 Author

**Showmick Roy**  
AI & Data Science Student | Green University of Bangladesh

[![GitHub](https://img.shields.io/badge/GitHub-showmick--roy-181717?style=flat-square&logo=github)](https://github.com/showmick-roy)

---

<div align="center">

⭐ **If you found this project helpful, please consider starring the repository!**

*Built with R and a passion for environmental data science.*

</div>
