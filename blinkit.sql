CREATE DATABASE Blinkit;

CREATE TABLE blinkit_sales
(
item_id VARCHAR(10) PRIMARY KEY,
item_fat_content VARCHAR(15) NOT NULL,
item_type VARCHAR(30) NOT NULL,
outlet_id VARCHAR(10) NOT NULL,
outlet_est_year INT NOT NULL,
outlet_location_type VARCHAR(20) NOT NULL,
outlet_size VARCHAR(15) NOT NULL,
outlet_type VARCHAR(30) NOT NULL,
item_visibility DECIMAL(5,4) NOT NULL,
item_weight DECIMAL(5,2) NOT NULL,
sales DECIMAL(10,2) NOT NULL,
rating DECIMAL(2,1) NOT NULL
);

SELECT *
FROM blinkit_sales;

-- Cloning the table to make required changes, To keep the raw data intact

CREATE TABLE blinkit_sales1
(
item_id VARCHAR(10) PRIMARY KEY,
item_fat_content VARCHAR(15) NOT NULL,
item_type VARCHAR(30) NOT NULL,
outlet_id VARCHAR(10) NOT NULL,
outlet_est_year INT NOT NULL,
outlet_location_type VARCHAR(20) NOT NULL,
outlet_size VARCHAR(15) NOT NULL,
outlet_type VARCHAR(30) NOT NULL,
item_visibility DECIMAL(5,4) NOT NULL,
item_weight DECIMAL(5,2) NOT NULL,
sales DECIMAL(10,2) NOT NULL,
rating DECIMAL(2,1) NOT NULL
);

SELECT *
FROM blinkit_sales1;

-- DATA CLEANING

SELECT DISTINCT(item_fat_content)
FROM blinkit_sales1;

-- We see their 4 different rows Low Fat / Regular / LF / reg This seems like LF is Low FAT and reg referes to Regular

SELECT item_fat_content,
(
	CASE
		WHEN item_fat_content = 'LF' THEN 'Low Fat'
        WHEN item_fat_content = 'reg' THEN 'Regular'
        ELSE item_fat_content
	END
) AS item_fat_contents
FROM blinkit_sales1;

DESCRIBE blinkit_sales1;

SHOW COLUMNS FROM blinkit_sales1;

UPDATE blinkit_sales1
SET item_fat_content = CASE
		WHEN item_fat_content = 'LF' THEN 'Low Fat'
        WHEN item_fat_content = 'reg' THEN 'Regular'
        ELSE item_fat_content
	END;

-- Done With item_fat_content Column

SELECT DISTINCT(outlet_type)
FROM blinkit_sales1;

-- So Apart from 1 Column there was no chnages, No Null values since we create Table with NOT NUll

-- Lets Start WITH Exploratory Data Analysis

SELECT *
FROM blinkit_sales1;

-- Basic Questions 

-- 1. Total sales generated?

SELECT SUM(sales)
FROM blinkit_sales1;

-- ANS : 219465.45

-- 2. Average sales per item?

SELECT item_id, AVG(sales)
FROM blinkit_sales1
GROUP BY item_id;

-- 3. Total number of unique items?

SELECT COUNT(DISTINCT(item_id))
FROM blinkit_sales1;

-- ANS : 1555

-- 4. Total number of outlets?

SELECT COUNT(DISTINCT(outlet_id))
FROM blinkit_sales1;

-- ANS : 8

-- 5. Average rating of items?

SELECT item_id, AVG(rating)
FROM blinkit_sales1
GROUP BY item_id;

-- Categorical Analysis

-- 1. Most Commons Item type ?

SELECT item_type, COUNT(item_type)
FROM blinkit_sales1
GROUP BY item_type
ORDER BY COUNT(item_type) DESC
LIMIT 1;

-- ANS : Fruits and Vegetables : 220

-- 2. Most common outlet_type?

SELECT outlet_id, COUNT(outlet_id)
FROM blinkit_sales1
GROUP BY outlet_id
ORDER BY COUNT(outlet_id) DESC
LIMIT 1;

-- ANS : OUT049 : 246

-- 3. Most common outlet_size?

SELECT outlet_size, COUNT(outlet_size)
FROM blinkit_sales1
GROUP BY outlet_size
ORDER BY COUNT(outlet_size) DESC
LIMIT 1;

-- ANS : Medium : 621

-- 4. Distribution of item_fat_content?

SELECT item_fat_content, COUNT(item_fat_content)
FROM blinkit_sales1
GROUP BY item_fat_content
ORDER BY COUNT(item_fat_content) DESC;

-- ANS : Low Fat = 1007 / Regular = 548

-- 5. Which outlet location type appears most?

SELECT outlet_location_type, COUNT(outlet_location_type)
FROM blinkit_sales1
GROUP BY outlet_location_type
ORDER BY COUNT(outlet_location_type) DESC
LIMIT 1;

-- ANS : Tier 2 = 604

-- 6. Total sales by outlet_type

SELECT outlet_type, SUM(Sales)
FROM blinkit_sales1
GROUP BY outlet_type;

-- 7. Total sales by outlet_location_type

SELECT outlet_location_type, SUM(sales)
FROM blinkit_sales1
GROUP BY outlet_location_type;

-- 8. Average rating by item_type

SELECT item_type, AVG(rating)
FROM blinkit_sales1
GROUP BY item_type;

-- 9. Count of items per outlet_size

SELECT outlet_id, COUNT(item_id)
FROM blinkit_sales1
GROUP BY outlet_id;

-- 10. Sales contribution by item_fat_content

SELECT item_fat_content, SUM(sales)
FROM blinkit_sales1
GROUP BY item_fat_content
ORDER BY SUM(sales) DESC;

-- INTERMEDIATE EDA

-- 1. Which item_type generates the highest sales?

SELECT item_type, SUM(sales)
FROM blinkit_sales1
GROUP BY item_type
ORDER BY SUM(sales) DESC
LIMIT 1;

-- ANS : Snack Foods = 32092.68

-- 2. Which outlet_type generates the most revenue?

SELECT outlet_type, SUM(sales)
FROM blinkit_sales1
GROUP BY outlet_type
ORDER BY SUM(sales) DESC;

-- ANS : Supermarket Type 1 : 178103.05

-- 3. Which outlet_size performs best?

SELECT outlet_size, SUM(sales)
FROM blinkit_sales1
GROUP BY outlet_size
ORDER BY SUM(sales) DESC
LIMIT 1;

-- ANS : Medium 87679.08

-- Which outlet_location_type has highest avg sales?

SELECT outlet_location_type, AVG(sales)
FROM blinkit_sales1
GROUP BY outlet_location_type
ORDER BY AVG(sales)
LIMIT 1;

-- ANS : Tier 2 = 138.939040

-- Compare Low Fat vs Regular sales

SELECT item_fat_content, SUM(Sales)
FROM blinkit_sales1
GROUP BY item_fat_content
ORDER BY SUM(sales) DESC;

-- ANS : Low fat sales is Higher than Regular 

-- Derived Metrics

-- 1. Revenue per outlet

SELECT outlet_type, SUM(sales)
FROM blinkit_sales1
GROUP BY outlet_type
ORDER BY SUM(sales) DESC;

-- 2. Average sales per item per outlet

SELECT item_id, outlet_id, AVG(sales)
FROM blinkit_sales1
GROUP BY item_id, outlet_id
ORDER BY AVG(sales) DESC;

-- 3. Sales per unit weight (efficiency)

SELECT (sales/item_weight) AS efficiency
FROM blinkit_sales1
ORDER BY efficiency DESC;

-- 4. Rating vs Sales correlation

