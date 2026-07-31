# 🛒 Zepto Inventory Data Analysis using SQL

A comprehensive SQL data analysis project built on Zepto's inventory dataset to uncover meaningful business insights related to pricing, discounts, inventory management, and product categories.

This project demonstrates practical SQL skills by performing data exploration, data cleaning, and business-oriented analysis on a real-world e-commerce dataset. It is designed to showcase analytical thinking and SQL proficiency for data analyst and business analyst roles.

---

# 📌 Project Overview

The objective of this project is to simulate the day-to-day responsibilities of a Data Analyst working in the e-commerce industry.

Using SQL, I performed:

- Database creation and data import
- Exploratory Data Analysis (EDA)
- Data cleaning and preprocessing
- Business-focused SQL analysis
- Insight generation for decision making

The project focuses on transforming raw inventory data into actionable business insights.

---

# 🎯 Objectives

- Explore an e-commerce inventory dataset using SQL
- Clean inconsistent and invalid data
- Analyze product pricing and discount trends
- Evaluate inventory availability
- Generate business insights through SQL queries
- Strengthen SQL skills using real-world scenarios

---

# 📂 Dataset Information

The dataset is based on Zepto's inventory listings and contains product-related information such as:

- SKU ID
- Product Name
- Category
- Maximum Retail Price (MRP)
- Discount Percentage
- Selling Price
- Available Quantity
- Product Weight
- Stock Availability
- Package Quantity

Each record represents a unique product SKU. Multiple entries for the same product may exist due to different package sizes or pricing variations.

---

# 🛠️ Technologies Used

- SQL
- PostgreSQL
- pgAdmin
- Git
- GitHub

---

# 🔄 Project Workflow

## 1. Database Creation

- Created the Zepto inventory table
- Defined appropriate data types
- Established the primary key

---

## 2. Data Import

- Imported CSV dataset into PostgreSQL
- Resolved UTF-8 encoding issues
- Verified successful data loading

---

## 3. Exploratory Data Analysis (EDA)

Performed initial exploration to understand the dataset by:

- Counting total records
- Viewing sample data
- Checking null values
- Identifying unique product categories
- Comparing in-stock and out-of-stock products
- Detecting duplicate product names across multiple SKUs

---

## 4. Data Cleaning

Improved data quality by:

- Removing records with invalid prices
- Converting MRP and Selling Price from paise to rupees
- Ensuring consistent and readable pricing data

---

## 5. Business Analysis

The following business problems were solved using SQL:

- Find the Top 10 Best-Value Products Based on Discount Percentage
- Identify High-MRP Products Currently Out of Stock
- Estimate Potential Revenue for Each Product Category
- Find Expensive Products (MRP > ₹500) with Minimal Discounts
- Rank the Top 5 Categories Offering the Highest Average Discounts
- Calculate Price per Gram to Identify Value-for-Money Products
- Categorize Products into Low, Medium, and Bulk Weight Segments
- Measure Total Inventory Weight Across Product Categories

---

# 💡 Key Insights

- Certain product categories consistently offer higher discounts than others.
- Premium-priced products are more likely to experience stock shortages.
- Price-per-gram analysis helps identify products offering the best value.
- Inventory weight distribution varies significantly across categories.
- Revenue potential differs considerably between product categories.

---

# 📁 Repository Structure

```
Zepto-Data-Analysis/
│
├── Dataset/
│   └── zepto.csv
│
├── SQL Queries/
│   └── zepto_analysis.sql
│
├── Results/
│   └── Query Outputs
│
└── README.md
```

---

# 📸 Sample Outputs

Add screenshots of your SQL query outputs in the **Results** folder and display a few of them here.

Examples:

- Top Discounted Products
- Revenue by Category
- Highest Discount Categories
- Out-of-Stock Products

---

# 📚 Skills Demonstrated

Throughout this project, I applied:

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Business Problem Solving using SQL

---

# 🚀 Future Enhancements

- Develop an interactive Power BI dashboard
- Build visualizations using Python
- Automate data cleaning workflows
- Perform advanced customer and sales analysis
- Create KPI dashboards for business reporting

---

# ▶️ How to Run the Project

1. Clone the repository

```bash
git clone https://github.com/yourusername/Zepto-Data-Analysis.git
```

2. Open PostgreSQL or pgAdmin.

3. Create a new database.

4. Import the dataset.

5. Execute the SQL script.

6. Review the query outputs and business insights.

---

# 👩‍💻 About Me

**Mridula Jha**

B.Tech Computer Science & Engineering

Aspiring Data Analyst | SQL | Python | Power BI | Data Visualization

I enjoy solving real-world business problems using data and continuously improving my analytical and problem-solving skills through hands-on projects.

---

⭐ If you found this project helpful, consider giving it a star! Feedback and suggestions are always welcome.
