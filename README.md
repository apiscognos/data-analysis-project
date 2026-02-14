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

## 2. Structure & Initial Data

### Dataset Overview

The dataset contains **50,000 rows** and **14 columns**, representing transactional-level data over a one-year period.

Each row corresponds to a single purchase event and includes customer attributes, transaction details, product information, and contextual variables (time and seasonality).

---

### Column Structure & Data Types

| Column Name        | Data Type | Description                                             |
| ------------------ | --------- | ------------------------------------------------------- |
| customer_id        | int       | Unique identifier for each customer                     |
| age                | int       | Customer age                                            |
| gender             | string    | Customer gender                                         |
| item_purchased     | string    | Product purchased                                       |
| value_in_pounds    | float     | Transaction monetary value (£)                          |
| time               | time      | Time of purchase                                        |
| day_of_week        | string    | Day when the purchase occurred                          |
| location           | string    | Customer geographic location (UK-based)                 |
| season             | string    | Season during which the purchase occurred               |
| review_rating      | float     | Customer rating associated with the purchase            |
| subscription       | string    | Indicates whether the customer has a subscription       |
| shipping_type      | string    | Type of shipping selected                               |
| previous_purchases | int       | Number of purchases made before the current transaction |
| payment_method     | string    | Payment method used                                     |

---

### Logical Data Model (Entity Grouping)

Although the dataset is stored as a single flat table, it can be logically structured into relational entities for analytical clarity.

#### 1️⃣ Customer Entity

| Columns      |
| ------------ |
| customer_id  |
| age          |
| gender       |
| location     |
| subscription |

Represents static or semi-static customer attributes.

---

#### 2️⃣ Transaction Entity

| Columns            |
| ------------------ |
| customer_id        |
| value_in_pounds    |
| time               |
| day_of_week        |
| season             |
| previous_purchases |
| payment_method     |
| shipping_type      |

Represents purchase-level operational and behavioral information.

---

#### 3️⃣ Product & Experience Entity

| Columns        |
| -------------- |
| item_purchased |
| review_rating  |

Captures product identity and post-purchase evaluation metrics.

---

### Initial Data Checks

Before analysis, the following validation steps were performed:

* Verification of data types and schema consistency
* Inspection for null or missing values
* Detection of duplicate records
* Basic distribution checks (age, revenue, ratings)
* Correction of inconsistent text value


These initial checks ensured that the dataset was analytically consistent before proceeding to SQL-based business exploration and visualization.

## 3. Executive Summary

The business has achieved a robust **£4.89M in total revenue** across **50,000 transactions**, maintaining a healthy **3.9 / 5 average customer satisfaction rating**.

Operationally, the commercial engine is stable and capable of generating consistent revenue. However, the analysis reveals a clear **"Value Gap" within the subscription model**, representing the most significant immediate growth opportunity.

While the company is well-established, it currently operates primarily on a **transactional revenue logic**. To scale effectively, the strategy must shift from *volume-chasing* to *value-deepening* — specifically by targeting and monetizing the underperforming subscriber segment.

In short:

* The revenue base is strong and diversified.
* Customer satisfaction is solid but not exceptional.
* Subscriber monetization does not yet reflect its strategic potential.
* The next growth phase depends on increasing Customer Lifetime Value rather than simply increasing transaction count.

---



### Key Business Indicators

<p align="center">
  <img src=".github/assets/executive summary.PNG" width="700"/>
</p>


### Strategic Insights

#### 1️⃣ Subscription Value Gap

Both **subscribers and non-subscribers spend approximately £98 per capita**, despite subscribers representing only **20% of the customer base** and theoretically belonging to a premium segment.

This indicates that the subscription model is currently **under-optimized and under-monetized**.



<p align="center">
  <img src=".github/assets/per capita count.PNG" width="700" />
</p>


---

#### 2️⃣ Balanced Customer Base & Gender Preferences

Revenue distribution is nearly balanced across gender segments, suggesting that the brand appeal is broad and not overly dependent on a single demographic group.

However, product-level analysis reveals preference patterns:

* **Swimsuits** show stronger performance among female customers.
* **Sneakers** show stronger performance among male customers.


*(Dashboard visualization to be inserted below)*

---

#### 3️⃣ Geographic Performance & Expansion Opportunity

Sales performance scales naturally with city size, yet **average customer ratings remain consistent across all locations**, indicating stable product and service quality.

This operational consistency represents a competitive advantage.

*(Dashboard visualization to be inserted below)*





### 4. Insights Deep Dive
We have found four critical points to work on, that will bring the most out of this analysis.

* **The Underutilized Subscription Tool**: Despite a 20% subscriber base, the loyalty program is currently failing to drive incremental spend per transaction, since the Average Order Value (AOV) for subscribers is £98.15 compared to £97.87 for non-subscribers. It implicates that, the current subscription model is just a retention tool but not a monetization one. The gap is virtually zero, meaning loyal customers are not being incentivized to increase their basket size.

* **The Star Products Metric**: We measured a balanced rating performance among all products, with a global average rating of 3.9/5. Nevertheless, some low-rated and high-rated products have growth potential and its promotion should be increased. On the other hand, The star products where the ones with high revenue and high reating, being the safest drivers of ROI.
  
* **Operational Performance**: Autumn is the peak revenue season (£1.24M), and transaction volume spikes significantly on weekends. It means that staffing 

### 5. Recommendations
* ****


