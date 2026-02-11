## 1. Background and Overview

### Business Context

This project analyzes a **synthetic e-commerce dataset** created for educational and portfolio purposes, representing a UK-based online retailer specializing in **clothing and jewelry**. The company is entirely fictional, and the dataset does not aim to perfectly replicate real-world market conditions.

While the data was generated to resemble common e-commerce structures (transactions, customers, products, time-based variables), certain distributions and patterns may appear simplified or idealized. This is intentional: the primary focus of the project is not realism at the market level, but rather the **end-to-end analytics process**, including data cleaning, querying, and insight generation.

Over the course of **one year**, the dataset contains approximately **50,000 transactions**, generating **£4.89 million in total revenue**. These figures provide sufficient scale and complexity to simulate a **mid-sized e-commerce scenario** for analytical practice.

The dataset enables structured exploration of how products, customers, and time-based factors can be analyzed to extract business insights within an e-commerce context.

---

### Objectives

From a **data analytics perspective**, the primary objective of this project is to support **data-driven decision-making** by identifying actionable patterns that can improve business performance. Specifically, the analysis aims to:

* Identify **high-value products** based on sales volume, revenue contribution, and customer ratings.
* Understand **customer behavior patterns**, including purchasing frequency and value generation.
* Detect **temporal trends** (day, hour, seasonality) that concentrate sales and revenue.
* Provide insights to **optimize product offering, operations, and customer experience**.

These insights are framed to reflect the type of questions a real e-commerce business would ask to improve profitability and efficiency.

---

### Technical Approach

For readers interested in the technical implementation, the project follows a structured analytics workflow:

* **Data Cleaning & Exploration**: Performed using Python to inspect data quality, handle inconsistencies, and prepare the dataset for analysis.

  * Python script available here → 

* **Business Question Analysis**: Core business questions are addressed using SQL, focusing on aggregations, segmentation, and trend analysis.

  * SQL queries available here → 



### Insights Deep Dive
We have found four critical points to work on, that will bring the most out of this analysis.

* **The Underutilized Subscription Tool**: Despite a 20% subscriber base, the loyalty program is currently failing to drive incremental spend per transaction, since the Average Order Value (AOV) for subscribers is £98.15 compared to £97.87 for non-subscribers. It implicates that, the current subscription model is just a retention tool but not a monetization one. The gap is virtually zero, meaning loyal customers are not being incentivized to increase their basket size.

* **The Star Products Metric**: We measured a balanced rating performance among all products, with a global average rating of 3.9/5. Nevertheless, some low-rated and high-rated products have growth potential and its promotion should be increased. On the other hand, The star products where the ones with high revenue and high reating, being the safest drivers of ROI.
  
* **Operational Performance**: Autumn is the peak revenue season (£1.24M), and transaction volume spikes significantly on weekends. It means that staffing 

### Recommendations
* ****


