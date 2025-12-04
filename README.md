# Customer Shopping Behaviour Analysis

## **Project Overview**

This project analyzes customer shopping behaviour using a publicly available dataset containing purchase, demographic, and behavioural information. The goal is to understand patterns in purchasing, discounts, subscription behaviour, and product popularity. The cleaned data is stored in a **MySQL database** for further querying and analysis.

> **Note:** The dataset (`customer_shopping_behavior.csv`) is **not original** and was obtained from a public repository on GitHub. It is used here solely for educational and analytical purposes.

The analysis is performed using **Python (pandas)** and **MySQL**, with results visualized to extract actionable insights for business decisions.



## **Project Workflow**

### **1. Data Loading**

* Load the CSV dataset using pandas.

### **2. Data Cleaning & Preprocessing**

* Handle missing values (e.g., `review_rating`).
* Standardize column names.
* Drop redundant columns (e.g., `promo_code_used`).
* Create new features such as `age_group` and `purchase_frequency_days`.

### **3. Data Analysis in Python**

* Summarize demographic and purchase patterns.
* Analyze frequency and revenue by category, age group, and gender.

### **4. Data Storage in MySQL**

* Connect to MySQL using SQLAlchemy and PyMySQL.
* Export the cleaned DataFrame to a MySQL database (`customerbehaviour`).
* Perform queries for deeper insights.

### **5. SQL Analysis**

* Revenue analysis by gender, age group, and purchase frequency.
* Top products by average review rating and discount usage.
* Customer segmentation: New, Returning, and Loyal.
* Subscription behaviour and correlation with repeat purchases.
* Purchase patterns by category and shipping type.



## **Technologies & Tools**

* **Python**: pandas, Jupyter Notebook
* **MySQL**: Workbench, SQL queries, database storage
* **SQLAlchemy / PyMySQL**: Connect Python to MySQL



## **Key Insights**

* Analysis of **gender and age group purchasing behaviour**.
* Identification of **top-rated and most discounted products**.
* Segmentation of customers into **New, Returning, and Loyal**.
* Revenue contribution by **age group, subscription status, and purchase frequency**.
* Insights into **repeat buyers and subscription correlation**.
* Understanding **purchase patterns by category and shipping type**.
