# house_price_prediction_using_R


# House Price Prediction – Exploratory Data Analysis

## Overview

This project focuses on Exploratory Data Analysis (EDA) and data visualization of a House Price Prediction dataset using R.

The main objective of this project is to understand the dataset, check its data quality, perform statistical analysis, identify patterns, and visualize relationships between different house features and house prices.

## Dataset

The dataset contains 2,000 house records and 10 variables.

### Features

| Feature   | Description                       |
| --------- | --------------------------------- |
| Id        | Unique house identifier           |
| Area      | Area of the house                 |
| Bedrooms  | Number of bedrooms                |
| Bathrooms | Number of bathrooms               |
| Floors    | Number of floors                  |
| YearBuilt | Year in which the house was built |
| Location  | Location category of the house    |
| Condition | Condition of the house            |
| Garage    | Garage availability               |
| Price     | Price of the house                |

## Tools and Technologies

* R
* RStudio
* Base R
* CSV Dataset
* Data Visualization

## Project Objectives

The main objectives of this project are:

1. Load and understand the house price dataset.
2. Examine the structure and dimensions of the dataset.
3. Check for missing values and duplicate records.
4. Perform descriptive statistical analysis.
5. Analyze categorical variables.
6. Create meaningful visualizations.
7. Identify patterns and relationships in the data.
8. Interpret the results of the analysis.

## Data Loading

The dataset was imported into R using the `read.csv()` function.

```r
data <- read.csv("House Price Prediction Dataset.csv")
```

The dataset was then examined using functions such as:

```r
head(data)
dim(data)
str(data)
summary(data)
```

## Data Quality Checking

Several data quality checks were performed during the analysis.

### Missing Values

Missing values were checked using:

```r
colSums(is.na(data))
```

No missing values were found in the dataset.

### Duplicate Records

Duplicate rows were checked using:

```r
sum(duplicated(data))
```

No duplicate records were found.

### Categorical Values

Unique values were examined for categorical variables such as:

* Location
* Condition
* Garage

### Range Checks

The ranges of important numerical variables were also checked, including:

* Area
* Bedrooms
* Bathrooms
* Floors
* YearBuilt
* Price

The values were reviewed to ensure that there were no obvious invalid values.

## Exploratory Data Analysis

Descriptive statistics were calculated to understand the distribution of house prices.

### House Price Statistics

| Statistic          |     Value |
| ------------------ | --------: |
| Mean Price         | 537,676.9 |
| Median Price       |   539,254 |
| Minimum Price      |    50,005 |
| Maximum Price      |   999,656 |
| Standard Deviation | 276,428.8 |

### Location Distribution

The number of properties in each location category was:

| Location | Count |
| -------- | ----: |
| Downtown |   558 |
| Rural    |   474 |
| Suburban |   483 |
| Urban    |   485 |

### Condition Distribution

| Condition | Count |
| --------- | ----: |
| Excellent |   511 |
| Fair      |   521 |
| Good      |   461 |
| Poor      |   507 |

### Garage Availability

| Garage | Count |
| ------ | ----: |
| No     | 1,038 |
| Yes    |   962 |

## Data Visualizations

Three different visualization techniques were used to understand the dataset.

### 1. House Price Distribution

A histogram was created to examine the distribution of house prices.

![House Price Distribution](plots/price_distribution.png)

The histogram shows that house prices are broadly distributed across the dataset. The frequency of houses varies across different price ranges, with a noticeable number of properties in the higher price ranges.

### 2. Area vs House Price

A scatter plot was created to examine the relationship between house area and price.

![Area vs House Price](plots/area_vs_price.png)

The scatter plot shows a relatively weak relationship between house area and price. The data points are mostly randomly distributed without a clear upward or downward trend.

This suggests that house price is not strongly determined by area alone. Other factors such as location, condition, bedrooms, bathrooms, and garage availability may also influence house prices.

### 3. House Price by Location

A box plot was created to compare house prices across different locations.

![House Price by Location](plots/price_by_location.png)

The box plot shows differences in house prices across locations. Among the four location categories, Suburban properties appear to have the highest median house price.

This indicates that location may have an influence on house prices.

## Key Findings

The main findings from the exploratory analysis are:

* The dataset contains 2,000 house records and 10 variables.
* No missing values were found.
* No duplicate records were found.
* House prices range from 50,005 to 999,656.
* The mean house price is 537,676.9.
* The median house price is 539,254.
* House area alone does not show a strong relationship with house price.
* House prices vary across different locations.
* Suburban properties appear to have the highest median price.
* The dataset contains properties with different conditions and garage availability.
* Multiple property characteristics may contribute to differences in house prices.

## Interpretation

The EDA indicates that house price is influenced by multiple factors rather than a single variable.

The weak relationship observed between area and price suggests that increasing house area does not necessarily result in a proportional increase in price within this dataset.

Location shows visible differences in price distributions, suggesting that geographical category can be an important factor in determining property prices.

Further analysis could examine the combined effect of variables such as bedrooms, bathrooms, condition, location, garage availability, and year built.

## Project Structure

```text
House-Price-EDA-R/
│
├── House Price Prediction Dataset.csv
├── house_price_eda.R
├── README.md
├── Report.docx
│
└── plots/
    ├── price_distribution.png
    ├── area_vs_price.png
    └── price_by_location.png
```

## How to Run

### Step 1: Install R and RStudio

Install R and RStudio on your computer.

### Step 2: Clone the Repository

Clone or download this repository from GitHub.

### Step 3: Open the Project

Open the project folder in RStudio.

### Step 4: Check the Dataset

Make sure the file below is located in the same folder as the R script:

```text
House Price Prediction Dataset.csv
```

### Step 5: Run the R Script

Open:

```text
house_price_eda.R
```

Run the script in RStudio to perform the analysis and generate the visualizations.

## Future Scope

This exploratory analysis can be extended into a machine learning project.

Possible future improvements include:

* Data preprocessing and feature engineering
* Correlation analysis
* Outlier analysis
* Feature selection
* Linear Regression
* Decision Tree Regression
* Random Forest Regression
* Model evaluation
* House price prediction

## Conclusion

This project demonstrates the complete basic workflow of Exploratory Data Analysis using R.

The analysis includes dataset loading, data quality checking, descriptive statistics, categorical analysis, data visualization, and interpretation of results.

The findings provide a foundation for further statistical analysis and machine learning-based house price prediction.

## Author

Bhavesh Chhipa

## Project Type

Exploratory Data Analysis and Data Visualization

## Language

R
