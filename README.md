# Marketing Campaign Performance Analysis

## Project Objective

This project explores the performance of marketing campaigns across different channels and objectives. The goal was to understand how campaigns contribute to customer engagement, conversions, orders, and revenue. The analysis focuses on campaign reach, customer behavior, conversion funnels, channel effectiveness, and revenue generation.

The project was completed as part of my Data Analyst portfolio to demonstrate skills in SQL data analysis, KPI development, business reporting, and dashboard creation.

---
https://docs.google.com/spreadsheets/d/1N0Qe7jIJaJXjFt4WND3cK4QVAmpF8gKc/edit?usp=sharing&ouid=110724832138354651073&rtpof=true&sd=true
## Dataset 

Due to GitHub file size limitations, the dataset is available here:

https://drive.google.com/file/d/1GQCbZ9dBxnkDC6eeXom9DL7-GMy3u1h0/view?usp=sharing
The dataset contains marketing campaign activity collected from customer interactions and transactions. It includes information about campaign performance, customer engagement, conversion events, purchases, and revenue generation.

The data is organized across multiple related tables, allowing analysis from different perspectives such as campaign effectiveness, channel performance, customer conversion behavior, and revenue impact. The dataset supports end-to-end marketing analytics and performance measurement.

---

## Tools Used

* SQL Server (T-SQL) for data extraction, joins, aggregations, and KPI calculations
* Power BI for dashboard development and interactive visualizations

---

## Data Cleaning

Several data preparation steps were completed before starting the analysis:

* Checked and handled null values across all tables
* Updated data types to ensure accurate calculations and reporting
* Created a Calendar Table to support time-based analysis
* Validated relationships between datasets
* Reviewed duplicate records and data consistency
* Standardized date fields for reporting and trend analysis
* Verified campaign IDs and customer IDs before aggregations
* Ensured revenue and transaction fields were correctly formatted

---

## Exploratory Data Analysis

### Overall Performance

The analysis covers 50 marketing campaigns that generated:

* 517.8K sessions
* 999.7K events
* 100K customers reached
* 56.1K buyers
* 82.2K orders
* $6.7M in revenue
* Overall conversion rate of 56.1%

These KPIs provide a high-level view of campaign effectiveness and customer engagement.

### Campaign Performance

Campaign performance was evaluated using:

* Total events generated
* Customers reached
* Buyers acquired
* Conversion rate
* Orders generated
* Revenue contribution

This analysis helps identify the campaigns that deliver the strongest business results.

### Customer & Revenue Trends

Revenue and customer activity were analyzed over time to identify performance patterns and seasonal changes.

Revenue remained relatively stable across the analyzed periods, while customer activity showed only minor fluctuations, indicating consistent campaign performance.

### Top Campaigns by Reach

The analysis identified the campaigns that reached the largest number of customers. These campaigns generated the highest visibility and audience exposure.

### Top Campaigns by Events

Campaigns were ranked by total events generated to measure customer engagement and interaction levels.

### Top Campaigns by Buyers and Revenue

The highest-performing campaigns were identified based on:

* Number of buyers
* Revenue generated

This helped highlight campaigns that successfully converted engagement into sales.

### Objective Performance

Campaigns were grouped by business objective:

* Acquisition
* Retention
* Reactivation
* Cross-sell

The analysis compared buyer counts and revenue across objectives to determine which marketing goals delivered the strongest results.

### Customer Conversion Funnel

Customer behavior was analyzed through the marketing funnel:

* View
* Click
* Add to Cart
* Purchase

This analysis highlights where customers continue through the journey and where drop-offs occur.

### Channel Performance

Performance was compared across marketing channels:

* Affiliate
* Display
* Email
* Paid Search
* Social

Metrics analyzed include:

* Number of campaigns
* Customers reached
* Buyers
* Conversion rate
* Orders
* Revenue

This helps identify the most effective channels for customer acquisition and revenue generation.

---

## Dashboard

The Power BI dashboard was designed to provide an interactive overview of campaign performance and marketing effectiveness.

### KPIs Included

* Total Campaigns
* Sessions
* Events
* Revenue
* Orders
* Customers
* Buyers
* Conversion Rate

### Visualizations Included

* Top Campaigns by Buyers & Revenue
* Customer & Revenue Trends
* Top Campaigns by Reach
* Objective Performance
* Top Campaigns by Events
* Customer Conversion Funnel
* Channel Performance Analysis
* Campaign Performance Tables

### Dashboard Preview

![Marketing Campaign Dashboard](campaigns-dashboard.png)

---

## Key Insights

1. The campaigns generated over $6.7 million in revenue from more than 82,000 orders.

2. More than half of all customers converted into buyers, resulting in an overall conversion rate of 56.1%.

3. Reactivation campaigns generated the highest revenue and buyer volume among all campaign objectives.

4. Paid Search and Affiliate channels delivered the strongest revenue performance.

5. A small number of campaigns contributed a large share of total revenue, highlighting the importance of identifying top-performing campaigns.

6. Customer engagement remained consistent across the analyzed time periods, showing stable campaign performance.

7. The conversion funnel shows a noticeable drop between customer interactions and purchases, indicating opportunities to improve conversion rates.

8. Different marketing channels produce significantly different results, making channel optimization an important area for future growth.

---

## Limitations

* Marketing spend and campaign costs were not included, so ROI and profitability could not be calculated.
* Customer demographics were not available for segmentation analysis.
* The dataset does not include attribution models to evaluate multi-touch customer journeys.
* External factors such as seasonality, promotions, or competitor activities were not included.
* The analysis focuses on historical performance and does not include predictive forecasting.

---

## Conclusion

This project provides a comprehensive analysis of marketing campaign performance by examining customer engagement, conversion behavior, revenue generation, and channel effectiveness.

Using SQL for data exploration and Power BI for visualization, the project demonstrates an end-to-end analytics workflow from raw marketing data to actionable business insights. The analysis helps identify successful campaigns, effective channels, and opportunities to improve customer conversion and marketing performance.

---

## Skills Demonstrated

* SQL Joins
* Common Table Expressions (CTEs)
* KPI Development
* Data Cleaning
* Data Modeling
* Calendar Table Creation
* Exploratory Data Analysis (EDA)
* Marketing Analytics
* Funnel Analysis
* Conversion Rate Analysis
* Revenue Analysis
* Power BI Dashboard Development
* Data Visualization
* Business Insight Generation
* Data Storytelling
