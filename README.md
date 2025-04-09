# -Pizza-Sales-Dashboard-Power-BI-SQL-Project
# 🍕 Pizza Sales Dashboard – Power BI + SQL Project

## 📌 Project Overview

This project focuses on analyzing sales data from a fictional pizza delivery business. The goal was to derive key business insights from raw order data using SQL and Power BI, including revenue trends, order behavior, and customer preferences.

---

## ❓ Problem Statement

The pizza business had a large amount of raw sales data, but no automated system to:
- Track total revenue and sales trends
- Identify peak order days and times
- Understand customer behavior (average order value, most popular pizzas)
- Detect performance issues across categories (size, type)

The lack of a reporting tool made it difficult to make informed decisions quickly.

---

## 🛠️ Tools & Technologies Used
- **SQL (MySQL)** – Data cleaning, transformation, and analysis
- **Power BI** – Data visualization and interactive dashboard creation
- **Excel** – Preliminary checks and data formatting

---

## 🔍 What I Did (Solution Approach)

1. **Data Preparation:**
   - Loaded the raw pizza sales dataset using the provided `pizza_sales_SQL.sql` file.
   - Created calculated fields such as:
     - `Total Revenue`
     - `Total Orders`
     - `Avg Order Value`
     - `Total Pizzas Sold`

2. **SQL Analysis:**
   - Used SQL to extract daily and monthly trends, popular pizza categories, and revenue by size.
   - Handled data type issues (e.g., converting `order_date` to proper DATE format).

3. **Power BI Dashboard:**
   - Created a comprehensive dashboard with:
     - KPI cards for revenue, pizzas sold, and order value
     - Bar charts for sales by pizza type, size, and day of week
     - Donut and line charts for revenue and quantity comparisons
     - Heatmap for identifying peak hours and days

4. **Troubleshooting:**
   - Fixed issues with incorrect weekday sorting using a custom `Day Number` column
   - Formatted large numbers using custom labels (e.g. **K** instead of **"tys."**)
   - Applied correct regional settings to standardize visuals

---

## 📈 Key Insights

- **Friday** was the busiest day, with the highest number of orders.
- The **average order value** was approximately **38.31**.
- **Total revenue** reached **817,860** (in local currency).
- **Most popular pizza category**: Classic American and Italian styles.
- **Peak order times** were concentrated around **7 PM**.

---

## 📂 Files Included

- `Pizza_db.pbix` – Power BI dashboard file
- `pizza_sales_SQL.sql` – Full SQL script for database creation and data loading

---

## 🧠 Lessons Learned

- Importance of column sorting (e.g., days of the week) in dashboards
- How to customize number formats for better visual communication
- Integrating SQL analysis directly into a business-oriented Power BI dashboard

---

## 🚀 Future Improvements

- Add filters for pizza categories and order times
- Connect to a real-time SQL server for live dashboards
- Include customer segmentation analysis
