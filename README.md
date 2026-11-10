# Coronary Heart Disease Analysis Using SPSS

## Project Overview

This project investigates the relationship between selected demographic and cardiovascular risk factors and the occurrence of coronary heart disease (CHD) within a 10-year period.

Using IBM SPSS Statistics, the analysis explores participant characteristics, examines associations between potential risk factors and CHD outcomes, and applies binary logistic regression to identify factors independently associated with CHD.

The project demonstrates the application of statistical analysis, data preparation, hypothesis testing, and predictive modelling in a healthcare research context.

## Research Objectives

The major objectives of this analysis are to:

- Examine the demographic and health characteristics of study participants.
- Assess the overall occurrence of coronary heart disease.
- Investigate associations between selected risk factors and CHD outcomes.
- Identify independent predictors of 10-year CHD outcomes using binary logistic regression.
- Interpret statistical findings to support evidence-based health insights.

## Dataset Description

The cleaned dataset contains **1,800 participant records and 18 variables**.

The variables cover demographic characteristics, lifestyle behaviours, medical history, and cardiovascular measurements.

### Key Variables

| Category | Variables |
|---|---|
| Demographics | Sex, age, education level |
| Lifestyle | Current smoking status, cigarettes per day |
| Medical history | Blood pressure medication, stroke, hypertension, diabetes |
| Clinical measurements | Cholesterol, systolic BP, diastolic BP, BMI, heart rate, glucose |
| Outcome | 10-year CHD outcome |

**Dependent Variable:** `ten_year_chd`

The outcome distinguishes between participants with and without a recorded 10-year CHD outcome.

## Tools and Technologies

- **IBM SPSS Statistics:** Data management, statistical analysis, hypothesis testing, and logistic regression.
- **Microsoft Excel:** Supporting data inspection and preparation.
- **CSV:** Storage and sharing of the cleaned dataset.

## Data Analysis Methodology

The analysis followed a structured statistical workflow:

### 1. Data Inspection and Quality Assessment
- Examined dataset structure and variable distributions.
- Identified missing observations.
- Reviewed descriptive statistics and variable ranges.
- Assessed data suitability for statistical analysis.

### 2. Descriptive Statistics
- Generated frequency distributions for categorical variables.
- Calculated descriptive statistics for numerical variables.
- Examined the demographic and clinical characteristics of participants.

### 3. CHD Occurrence Analysis
- Examined the overall distribution of 10-year CHD outcomes.
- Compared CHD occurrence across demographic and clinical characteristics.
- Used cross-tabulations to explore differences between participant groups.

### 4. Bivariate Analysis
Pearson's Chi-square test was used to examine associations between the binary CHD outcome and selected categorical variables, including:

- Sex
- Education level
- Smoking status
- Hypertension
- Diabetes
- Age group

### 5. Multivariable Binary Logistic Regression

Binary logistic regression using the ENTER method was performed to investigate factors independently associated with the 10-year CHD outcome.

The dependent variable was `ten_year_chd`.

The independent variables included:

- Sex
- Education level
- Current smoking status
- Diabetes
- Blood pressure medication
- Age in years

The model assessed adjusted odds ratios (ORs), 95% confidence intervals, and statistical significance.

## Key Findings

The analysis revealed several important patterns:

- **Overall CHD occurrence:** 273 participants (15.2%) had a recorded CHD outcome, while 1,527 (84.8%) did not.
- **Age:** Increasing age was associated with higher odds of CHD.
- **Sex:** Female participants had lower adjusted odds of CHD compared with male participants.
- **Diabetes:** Participants with diabetes had higher adjusted odds of CHD.
- **Blood pressure medication:** Participants receiving blood pressure medication had higher adjusted odds of CHD.

### Selected Logistic Regression Results

| Predictor | Adjusted Odds Ratio |
|---|---:|
| Age (per year) | 1.085 |
| Female sex | 0.530 |
| Diabetes | 3.090 |
| Blood pressure medication | 2.320 |

The logistic regression model was statistically significant:

- Model Chi-square: 157.467
- Degrees of freedom: 8
- Significance: p < 0.001
- Nagelkerke R²: 0.152

*Interpretation: These are adjusted associations from the fitted model, not evidence of causation. Odds ratios should be interpreted relative to their respective reference categories.*

## Project Deliverables

The repository contains the following resources:

| File | Description |
|---|---|
| `Analysis_Report.pdf` | Final statistical analysis report |
| `Analysis_Script.sps` | SPSS syntax for reproducing the analysis |
| `Cleaned_Dataset.csv` | Cleaned dataset used in the analysis |
| `Correlation vs Regression Discuss.mp4` | Supporting discussion on correlation and regression |

## How to Reproduce the Analysis

1. Clone or download this repository.
2. Open IBM SPSS Statistics.
3. Import `Cleaned_Dataset.csv` into SPSS.
4. Open `Analysis_Script.sps` in the SPSS Syntax Editor.
5. Ensure the required variables are available in the active dataset.
6. Execute the syntax to reproduce the statistical procedures.
7. Review the output and compare the results with `Analysis_Report.pdf`.

**Note:** The syntax assumes that the dataset has already been loaded into SPSS. Ensure categorical variables are correctly coded before running the regression.

## Limitations

- The analysis relies on the available study dataset and its recorded variables.
- Missing observations may reduce the sample size available for individual statistical procedures.
- The observational nature of the data does not establish causal relationships.
- Logistic regression findings indicate associations and should not be interpreted as definitive clinical diagnoses or individual risk predictions.

## Conclusion

This project demonstrates how statistical analysis can be used to investigate cardiovascular risk factors and identify variables associated with coronary heart disease outcomes.

By combining descriptive statistics, cross-tabulation, Chi-square testing, and binary logistic regression, the analysis provides a structured approach to extracting meaningful insights from healthcare data.

It also demonstrates practical proficiency in SPSS, statistical reasoning, data interpretation, and communicating analytical findings.

## Author

**Chiemelie Onu**

Data Analyst | Data Science Instructor | AI & Machine Learning Instructor

- GitHub: [1234Godwin](https://github.com/1234Godwin)
- LinkedIn: [Chiemelie Onu](https://www.linkedin.com/in/chiemelieonu/)

---

*This project was completed as part of a data analysis assessment and is intended for educational and analytical demonstration purposes. It is not a substitute for professional medical advice.*
