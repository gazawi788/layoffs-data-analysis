# Layoffs Data Analysis

This project analyzes global layoffs data to uncover trends across companies, industries, countries, and time.
The analysis follows a complete data analytics pipeline, starting from raw data cleaning to exploratory data analysis (EDA).

This project simulates real-world data analyst tasks and demonstrates practical SQL skills used in industry.

---

## Project Objectives
- Clean and prepare raw layoffs data for analysis
- Identify patterns and trends in layoffs over time
- Analyze layoffs by company, industry, country, and funding stage
- Apply analytical SQL techniques such as window functions and ranking

---

## Tools & Technologies
- MySQL
- SQL
- Window Functions
- Common Table Expressions (CTEs)

---

## Project Structure
layoffs-data-analysis/
│
|
│ ├── 01_data_cleaning.sql
│ └── 02_exploratory_data_analysis.sql
│
└── README.md






---

## Data Cleaning Highlights
- Created staging tables to preserve raw data
- Removed duplicate records using window functions
- Standardized text fields (company, industry, country)
- Converted date fields to proper DATE format
- Handled missing and null values
- Prepared a clean dataset for analysis

---

## Key Questions Answered
- Which companies laid off the most employees?
- Which industries were most affected by layoffs?
- Which countries experienced the highest number of layoffs?
- How did layoffs change over time (yearly and monthly)?
- Which companies had the highest layoffs each year?
- What are the cumulative (rolling) trends of layoffs over time?

---

## Exploratory Data Analysis (EDA)
The EDA focuses on:
- Aggregations by company, industry, country, and funding stage
- Time-based analysis (yearly and monthly trends)
- Rolling totals to observe cumulative layoffs
- Ranking top companies by layoffs per year using window functions

---

## Key Skills Demonstrated
- Data cleaning and preprocessing
- Exploratory data analysis
- Business-oriented analytical thinking
- SQL window functions (ROW_NUMBER, DENSE_RANK, rolling sums)
- Writing clean and readable SQL queries

---
***Sharif Ahmed AL-Mahmodi***
 

---

## Notes
This project was developed as a practical, hands-on data analysis exercise and is suitable for showcasing analytical skills in professional portfolios and applications for project-based roles or internships.
