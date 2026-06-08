# Multiple Regression & Diagnostics: NSSO & IPL Analysis

Application of multiple linear regression and diagnostic techniques to analyze consumption patterns and the relationship between performance and salary using real-world datasets.

---

## Overview

This project applies regression modeling and diagnostic testing on two datasets to evaluate model performance, validate statistical assumptions, and derive meaningful insights.

It combines econometric analysis with real-world applications in consumption behavior and sports analytics.

---

## Part 1: NSSO Consumption Analysis

### Techniques Used

* Multiple Linear Regression
* Regression Diagnostics
* Ridge Regression

### Objective

To model total consumption using various food consumption variables and evaluate the validity of the regression model.

### Key Analysis

* Built regression model using multiple predictors
* Evaluated assumptions:

  * Normality (Shapiro-Wilk test)
  * Homoscedasticity (Breusch-Pagan test)
  * Linearity & independence (residual analysis)
* Applied GVLMA for overall validation

### Key Insights

* Extremely high R² (~1.0) indicates possible overfitting or multicollinearity
* Residuals do not follow normal distribution
* Presence of multicollinearity among predictors
* Ridge regression used to improve model stability

---

## Part 2: IPL Performance vs Salary Analysis

### Techniques Used

* Multiple Linear Regression
* Residual Diagnostics

### Objective

To analyze the relationship between player performance and salary in the IPL.

### Key Analysis

* Modeled salary (`Final Price`) using:

  * Runs
  * Wickets
* Evaluated model using residual plots and diagnostics

### Key Insights

* Player performance significantly impacts salary
* Both runs and wickets contribute positively to salary prediction
* Model assumptions require refinement for better reliability

---

## Dataset

This project uses two datasets:

* **NSSO Consumption Dataset**
  Contains detailed consumption data across regions and commodities in India
  Used for regression modeling and diagnostic analysis

* **IPL Dataset**
  Includes player performance metrics and salary information
  Used to analyze the relationship between performance and compensation

---

## Applications

* Consumption pattern analysis
* Economic modeling
* Sports analytics and salary prediction
* Model validation and diagnostics

---

## Tech Stack

* Python (pandas, statsmodels, matplotlib)
* R (lm, glmnet, gvlma)
* Statistical modeling and econometrics

---

## Project Structure

* `analysis.ipynb` – Python implementation
* `analysis.R` – R implementation
* `README.md` – project overview
* `project_report.pdf` – detailed analysis
* `data` – datasets
