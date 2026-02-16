-- ============================================================
-- Sales Analysis Queries
-- Database: PostgreSQL
-- Project: Data Analysis Project
-- Description:
-- Business-oriented SQL analysis including sales performance,
-- customer behavior, ratings and revenue patterns.
-- ============================================================


-- ============================================================
-- 1. Best-Selling Products by Gender
-- ============================================================

SELECT 
    gender,
    item_purchased,
    COUNT(*) AS total_sold
FROM table1
GROUP BY gender, item_purchased
ORDER BY gender, total_sold DESC;


-- ============================================================
-- 2. Sales Distribution by Location and Season
-- ============================================================

-- Sales by location
SELECT
    location,
    item_purchased,
    COUNT(*) AS total_sold
FROM table1
GROUP BY location, item_purchased
ORDER BY location, total_sold DESC;

-- Sales by season
SELECT
    season,
    item_purchased,
    COUNT(*) AS total_sold
FROM table1
GROUP BY season, item_purchased
ORDER BY season, total_sold DESC;


-- ============================================================
-- 3. Customer Behavior by Subscription Status
-- ============================================================

-- Total customers by subscription status
SELECT
    subscription_status,
    COUNT(*) AS total_customers
FROM table1
GROUP BY subscription_status;

-- Total revenue by subscription status
SELECT
    subscription_status,
    ROUND(SUM("value_in_pounds "::NUMERIC), 2) AS total_revenue
FROM table1
GROUP BY subscription_status;

-- Average review rating by subscription status
SELECT
    subscription_status,
    ROUND(
        AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS avg_rating
FROM table1
GROUP BY subscription_status;


-- ============================================================
-- 4. Sales Concentration by Day and Hour
-- ============================================================

-- Sales by hour of day (converted to 24h format)
SELECT
    CASE
        WHEN time ILIKE '%p%' AND LEFT(time, 2)::INT < 12
            THEN LEFT(time, 2)::INT + 12
        WHEN time ILIKE '%a%' AND LEFT(time, 2)::INT = 12
            THEN 0
        ELSE LEFT(time, 2)::INT
    END AS hour_of_day,
    COUNT(*) AS total_sales
FROM table1
WHERE time IS NOT NULL
GROUP BY hour_of_day
ORDER BY total_sales DESC;

-- Sales by day of week
SELECT
    day_of_week,
    COUNT(*) AS total_sales
FROM table1
GROUP BY day_of_week
ORDER BY total_sales DESC;

-- Sales by day of week and hour
SELECT
    day_of_week,
    CASE
        WHEN time ILIKE '%p%' AND LEFT(time, 2)::INT < 12
            THEN LEFT(time, 2)::INT + 12
        WHEN time ILIKE '%a%' AND LEFT(time, 2)::INT = 12
            THEN 0
        ELSE LEFT(time, 2)::INT
    END AS hour_of_day,
    COUNT(*) AS total_sales
FROM table1
WHERE time IS NOT NULL
GROUP BY day_of_week, hour_of_day
ORDER BY total_sales DESC;


-- ============================================================
-- 5. Star Product Analysis (Revenue + Rating Score)
-- ============================================================

-- Revenue and average rating per product
SELECT
    item_purchased,
    SUM("value_in_pounds "::NUMERIC) AS total_revenue,
    ROUND(
        AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS avg_rating
FROM table1
WHERE review_rating IS NOT NULL
GROUP BY item_purchased;

-- Star score (Revenue × Average Rating)
SELECT
    item_purchased,
    SUM("value_in_pounds "::NUMERIC) AS total_revenue,
    ROUND(
        AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS avg_rating,
    ROUND(
        SUM("value_in_pounds "::NUMERIC)
        * AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS star_score
FROM table1
WHERE review_rating IS NOT NULL
GROUP BY item_purchased
ORDER BY star_score DESC;


-- ============================================================
-- 6. Global and Location-Based Rating Analysis
-- ============================================================

-- Global average rating
SELECT
    ROUND(
        AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS global_avg_rating
FROM table1
WHERE review_rating IS NOT NULL;

-- Average rating by location
SELECT 
    location, 
    ROUND(
        AVG(REPLACE(review_rating, ',', '.')::NUMERIC),
        2
    ) AS avg_rating
FROM table1 
GROUP BY location
ORDER BY avg_rating DESC;


-- ============================================================
-- 7. Revenue by Hour of Day
-- ============================================================

SELECT
    CASE
        WHEN time ILIKE '%p%' AND LEFT(time, 2)::INT < 12
            THEN LEFT(time, 2)::INT + 12
        WHEN time ILIKE '%a%' AND LEFT(time, 2)::INT = 12
            THEN 0
        ELSE LEFT(time, 2)::INT
    END AS hour_of_day,
    ROUND(SUM("value_in_pounds "::NUMERIC), 2) AS total_revenue
FROM table1
WHERE time IS NOT NULL
GROUP BY hour_of_day
ORDER BY hour_of_day;







