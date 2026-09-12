# Growfinix Task 3 – Customer Demographic Analysis

## 1. Objective

Analyze customer demographic data from tour enquiries using Python, Pandas, and Matplotlib.

The analysis focuses on customer age, income, income brackets, and travel destinations.

## 2. Tools Used

- Python
- Pandas
- Matplotlib
- Google Colab

## 3. Dataset

The dataset contains 2,000 customer tour enquiry records with the following fields:

- Customer_ID
- Age
- Income
- Income_Bracket
- Destination

## 4. Data Analysis Performed

### Dataset Overview
The dataset was loaded into a Pandas DataFrame and examined using statistical and structural analysis.

### Missing Value Check
Missing values were checked using:

`df.isnull().sum()`

All analyzed columns contained **0 missing values**.

### Duplicate Check
Duplicate records were checked using:

`df.duplicated().sum()`

The result was **0 duplicate records**.

### Age Group Analysis
Customers were grouped into the following age groups:

- 18–25
- 26–35
- 36–45
- 46–55
- 56–65

A bar chart was created to visualize the number of customers in each age group.

### Income Bracket Analysis
Customer counts by income bracket were calculated.

Results:

- Lower-Middle: 829
- Upper-Middle: 623
- High: 295
- Low: 253

The Lower-Middle income group contains the highest number of customers.

### Average Income Analysis

Average income was calculated for each income bracket.

Results:

- High: 133,249.56
- Upper-Middle: 76,174.72
- Lower-Middle: 44,582.58
- Low: 23,749.50

The High income group has the highest average income.

### Age Distribution
A histogram was created to visualize the distribution of customer ages.

## 5. Key Findings

1. The dataset contains 2,000 customer records.
2. No missing values were found.
3. No duplicate records were found.
4. The Lower-Middle income bracket has the largest customer group.
5. The High income bracket has the highest average income.
6. Customers are distributed across the age groups from 18–25 to 56–65.
7. Bar charts and a histogram were used to visualize demographic patterns.

## 6. Conclusion

The analysis provides useful insights into customer demographics based on age and income. The results can help identify important customer segments and support better targeting of travel products and marketing campaigns.

## 7. Deliverables

- Python/Google Colab notebook
- README.md
- Documentation
- Analysis charts and outputs
