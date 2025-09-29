# Employee Performance Dashboard (SQL Project)

## 📌 Overview
Analyses HR-style employee data using **advanced SQL**: Window Functions, CTEs, Stored Procedures, and (optionally) Temp Tables.

## 🗂️ Tables (expected)
- `employee_demographics(employee_id, first_name, last_name, gender, age)`
- `employee_salary(employee_id, dept_id, occupation, salary)`

> Replace table/column names if your schema differs.

## 📊 What’s inside
1. **Top earners per department** (window functions)
2. **Salary vs department average** (CTE + window)
3. **Employees above company average** (CTE)
4. **Promotion candidates**: salary > dept avg AND age < 40 (temp or regular table)
5. **Stored procedure**: `get_high_earners(min_salary)`

Screenshots of outputs go in the `screenshots/` folder.

## 🚀 How to run
1. Open your SQL tool (MySQL Workbench / DBeaver / etc.).
2. Run each `.sql` file in the `sql/` folder **one by one**.
3. Take a screenshot of each result and put it in `screenshots/`.
4. Commit/push changes to this repo.

## 🏆 Skills Demonstrated
- Window Functions (`ROW_NUMBER`, `RANK`, `LAG`, `AVG OVER`)
- CTEs (including using them as clean building blocks)
- Stored Procedures (MySQL)
- Temp vs Regular tables

## 🙌 Credits
Parks & Rec data for learning purposes.
