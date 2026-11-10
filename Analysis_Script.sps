* Encoding: UTF-8.
* =============================================================.
* DUAC DATA ANALYSIS ASSESSMENT.
* OPTION B: CARDIOVASCULAR RISK AND 10-YEAR CHD OUTCOME.
* Author: Chiemelie Onu.
* Software: IBM SPSS Statistics.
* =============================================================.


* =============================================================.
* 1. INITIAL DATA AUDIT AND MISSING VALUE CHECK.
* =============================================================.

* Categorical variables.

FREQUENCIES VARIABLES=
    sex_male
    education_level
    bp_medication
    prevalent_stroke
    prevalent_hypertension
    diabetes
    ten_year_chd
    current_smoker
  /ORDER=ANALYSIS.


* Numerical variables.

FREQUENCIES VARIABLES=
    age_years
    cigarettes_per_day
    total_cholesterol_mg_dl
    systolic_bp_mmhg
    diastolic_bp_mmhg
    bmi_kg_m2
    heart_rate_bpm
    glucose_mg_dl
  /FORMAT=NOTABLE
  /STATISTICS=STDDEV RANGE MINIMUM MAXIMUM MEAN MEDIAN SKEWNESS SESKEW
  /ORDER=ANALYSIS.


* =============================================================.
* 2. CHD RISK ANALYSIS.
* =============================================================.

* Overall 10-year CHD outcome.

FREQUENCIES VARIABLES=ten_year_chd
  /ORDER=ANALYSIS.


* 10-year CHD outcome across selected participant characteristics.

CROSSTABS
  /TABLES=ten_year_chd BY
    sex_male
    education_level
    current_smoker
    prevalent_hypertension
    diabetes
    age_group
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.


* =============================================================.
* 3. BIVARIATE ANALYSIS.
* CHD outcome versus categorical predictors.
* Pearson Chi-square tests.
* =============================================================.

CROSSTABS
  /TABLES=ten_year_chd BY
    sex_male
    education_level
    current_smoker
    prevalent_hypertension
    diabetes
    age_group
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ
  /CELLS=COUNT
  /COUNT ROUND CELL.


* =============================================================.
* 4. MULTIVARIABLE LOGISTIC REGRESSION.
* Outcome: 10-year CHD outcome.
* =============================================================.

LOGISTIC REGRESSION VARIABLES ten_year_chd
  /METHOD=ENTER
    sex_male
    education_level
    current_smoker
    diabetes
    bp_medication
    age_years
  /CONTRAST (sex_male)=Indicator
  /CONTRAST (education_level)=Indicator
  /CONTRAST (diabetes)=Indicator
  /CONTRAST (bp_medication)=Indicator
  /CONTRAST (current_smoker)=Indicator
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).


* =============================================================.
* 5. FIGURE 1 — 10-YEAR CHD OUTCOME BY AGE GROUP.
* =============================================================.

CROSSTABS
  /TABLES=ten_year_chd BY age_group
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL
  /BARCHART.


* =============================================================.
* END OF ANALYSIS SYNTAX.
* =============================================================.