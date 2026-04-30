# Blinkit Sales Data Analysis On SQL and Power BI

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

## Power BI Dashboard – Business Requirements

This project also includes a Power BI dashboard designed to visualize key business insights derived from the Blinkit sales dataset.

## Dashboard Objectives

The dashboard focuses on analyzing how different factors impact total sales and other key performance indicators (KPIs) such as:

- Average Sales
- Number of Items
- Average Rating

## Chart Requirements

1. Total Sales by Fat Content

Objective: Analyze the impact of fat content on total sales
Additional KPIs: Average Sales, Number of Items, Average Rating
Chart Type: Donut Chart

2. Total Sales by Item Type

Objective: Identify the performance of different item types in terms of total sales
Additional KPIs: Average Sales, Number of Items, Average Rating
Chart Type: Bar Chart

3. Fat Content by Outlet for Total Sales

Objective: Compare total sales across different outlets segmented by fat content
Additional KPIs: Average Sales, Number of Items, Average Rating
Chart Type: Stacked Column Chart

4. Total Sales by Outlet Establishment
Objective: Evaluate how the age or type of outlet establishment influences total sales
Chart Type: Line Chart

## Why This Matters

This dashboard transforms raw SQL analysis into visual insights, making it easier to:

Identify top-performing product categories
Understand customer preferences (Low Fat vs Regular)
Evaluate outlet performance across locations and sizes
Support data-driven business decisions
