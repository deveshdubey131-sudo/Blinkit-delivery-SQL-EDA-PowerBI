# Blinkit Sales Data Analysis (SQL Project)

## About

This project focuses on analyzing Blinkit grocery sales data using SQL. It covers the full workflow from database creation and data cleaning to exploratory data analysis (EDA) and deriving business insights. The dataset includes product-level, outlet-level, and sales-related attributes.

## Purpose of the Project

- To practice real-world data analysis using SQL
- To understand sales trends and customer behavior in a retail/grocery context
- To clean and standardize raw data for accurate analysis
- To generate actionable insights for business decision-making

## Skills Required

- SQL (Basic to Intermediate)
- Data Cleaning Techniques
- Aggregations (SUM, AVG, COUNT)
- GROUP BY & ORDER BY
- CASE Statements
- Exploratory Data Analysis (EDA)
- Business Insight Generation

## Different Analysis Done

1. Data Cleaning

- Standardized inconsistent values in item_fat_content (e.g., LF → Low Fat, reg → Regular)
- Ensured structured schema with proper constraints
- Created a duplicate table to preserve raw data integrity

2. Basic Analysis

- Total sales generated
- Average sales per item
- Total number of unique items and outlets
- Average rating of items

3. Categorical Analysis

- Most common item types
- Most frequent outlet types and sizes
- Distribution of item fat content
- Dominant outlet location type
- Sales breakdown by categories

4. Intermediate Analysis

- Top-performing item types by revenue
- Best-performing outlet types and sizes
- Sales comparison across outlet locations
- Comparison of Low Fat vs Regular product sales

5. Derived Metrics

- Revenue per outlet
- Average sales per item per outlet
- Sales efficiency (sales per unit weight)
- Relationship between rating and sales

## Business Questions To Answer

- What is the total revenue generated?
- Which item types contribute the most to sales?
- Which outlet type generates the highest revenue?
- What outlet size performs best?
- Which location tier has the highest sales impact?
- Do Low Fat products sell more than Regular ones?
- Which products have the highest customer ratings?
- How does item visibility affect sales?
- Which outlet contributes the most to overall sales?
- Is there a relationship between product rating and sales performance?

## Key Insights
- Snack Foods generate the highest revenue among item types
- Supermarket Type 1 outlets dominate total sales
- Medium-sized outlets perform the best
- Tier 2 locations contribute significantly to sales
- Low Fat products outperform Regular in total revenue
