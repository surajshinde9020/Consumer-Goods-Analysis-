# Consumer Goods Analysis - SQL Project

## Overview
This repository contains SQL queries designed for the analysis of consumer goods data. The project comprises nine tasks, each with its dedicated SQL script that addresses different analytical requirements.

## Project Structure

### Task 1: Croma India Product-Wise Sales Reports for Fiscal Year 2021
- **File:** _[`t1.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t1.sql)_
- **Description:** This query generates product-wise sales reports for Croma India for the fiscal year 2021. It utilizes functions to accurately determine the fiscal year.

### Task 2: Gross Monthly Total Sales Report for Croma
- **File:** [`t2.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t2.sql)
- **Description:** This script calculates the gross monthly total sales for Croma.

### Task 3: Market Badge Determination
- **File:** [`t3.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t3.sql)
- **Description:** A stored procedure that assigns a 'Gold Badge' to markets with total sold quantities ≥ 5 Million and a 'Silver Badge' to those with less. Inputs required are "Market" and "Fiscal Year."

### Task 4: Analysis of Top Markets, Products, and Customers by Net Sales
- **Files:** 
  - [`t4_a.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t4_a.sql) (Top Markets)
  - [`t4_b.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t4_b.sql) (Top Products)
  - [`t4_c.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t4_c.sql) (Top Customers)
- **Description:** These queries identify the top N entities in their respective categories based on net sales. Inputs for these stored procedures include "Top N number" and "Fiscal Year."

### Task 5: Net Sales Percentage Share for Top 10 Markets
- **File:** [`t5.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t5.sql)
- **Description:** This query calculates the net sales percentage share for the top 10 markets using CTEs and the window function `OVER()`.

### Task 6: Net Sales Percentage Share by Region
- **File:** [`t6.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t6.sql)
- **Description:** Similar to Task 5, this script calculates the net sales percentage share by region, using CTEs and the window function `OVER()` with `PARTITION BY`.

### Task 7: Top N Products in Each Division by Quantity Sold
- **File:** [`t7.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t7.sql)
- **Description:** This query identifies the top N products in each division based on the quantity sold. It uses a stored procedure, CTEs, and the window function `OVER(PARTITION BY)`.

### Task 8: Top 2 Markets in Every Region by Gross Sales
- **File:** [`t8.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t8.sql)
- **Description:** Retrieves the top 2 markets in every region based on gross sales for the respective fiscal year. It employs a stored procedure, CTEs, and the window function `OVER(PARTITION BY)`.

### Task 9: Forecast Accuracy for Each Customer and Market
- **File:** [`t9.sql`](https://github.com/surajshinde9020/Consumer-Goods-Analysis-/blob/main/t9.sql)
- **Description:** This stored procedure calculates the forecast accuracy for each customer and market. The user needs to provide the fiscal year as input.

## How to Use
1. Clone the repository to your local machine.
2. Open your SQL client.
3. Import the `.sql` files.
4. Execute the queries as per your analytical needs.

