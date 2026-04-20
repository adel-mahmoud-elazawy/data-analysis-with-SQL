# 📊 SQL Data Analysis Project: Sales & Product Performance

## 📝 Project Overview
This project focuses on performing advanced data analysis on a retail dataset using **SQL Server**. The goal is to extract actionable insights regarding sales trends, cumulative growth, and product performance metrics. 

The project is divided into two main analytical parts:
1. **Sales Trend Analysis:** Monthly aggregation and Running Totals (YTD).
2. **Product Performance Benchmarking:** Comparing product sales against averages and tracking Year-over-Year (YoY) progress.

---

## 🛠️ SQL Techniques Used
In this project, I demonstrated my ability to write complex and optimized SQL queries using:
- **Window Functions:** `SUM() OVER`, `AVG() OVER`, and `LAG()` for time-series and cumulative analysis.
- **Common Table Expressions (CTEs):** To create clean, readable, and modular code.
- **Subqueries:** For multi-level data aggregation.
- **Conditional Logic:** Using `CASE WHEN` to categorize performance and growth.
- **Time-Series Functions:** `DATETRUNC`, `YEAR()`, and `MONTH()` for temporal grouping.
- **Table Joins:** Combining Fact and Dimension tables using `LEFT JOIN`.

---

## 📂 Analysis Breakdown

### 1️⃣ Sales Growth & Running Totals
The first part of the analysis focuses on the company's overall health by calculating:
- **Monthly Sales:** Aggregating sales at the month level.
- **Overall Running Total:** Cumulative sales across the entire dataset duration.
- **Year-To-Date (YTD) Running Total:** Sales accumulation that resets every year to monitor annual targets.

### 2️⃣ Product Performance & Progress Tracking
The second part deep-dives into product-level data to identify winners and losers:
- **Benchmarking:** Comparing each product's annual sales to its own historical average to determine if it's "Above" or "Below" average.
- **Growth Analysis:** Utilizing the `LAG` function to fetch the previous year's sales and calculate the progress status (**Increase**, **Decrease**, or **No Change**).

---

## 📊 Sample Insights
- **Cumulative Growth:** Monitoring how sales build up month-over-month.
- **Product Trends:** Identifying which products are consistently growing and which ones require marketing intervention.
- **Performance Status:** A clear labeling system for sales performance compared to historical benchmarks.

---

## 🚀 How to Use
1. **Database Setup:** Ensure you have the `gold.fact_sales` and `products` tables imported into your SQL environment.
2. **Run Queries:** You can find the SQL scripts in the repository. Execute them to generate the analytical reports.

---

## 👨‍💻 Author
** Adel Mahmoud EL-azawy ** *Data Analysis Enthusiast & SQL Developer*
