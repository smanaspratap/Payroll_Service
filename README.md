# Payroll Service Database

## Project Description
This project demonstrates the implementation of a **Payroll Service Database** using **MySQL**.  
It covers database creation, table creation, CRUD operations, aggregate queries, schema extension, and normalization using **Entity Relationship (ER) modeling**.

The project is implemented step-by-step through **Use Cases (UC1–UC12)**.

---

# Technologies Used
- MySQL
- MySQL Workbench
- Git
- GitHub
- Git Flow

---

# Project Structure

```
Payroll-Service
│
├── sql
│   ├── UC1_create_database.sql
│   ├── UC2_create_employee_payroll_table.sql
│   ├── UC3_insert_employee_payroll_data.sql
│   ├── UC4_retrieve_all_employee_payroll_data.sql
│   ├── UC5_retrieve_salary_and_employee_by_date_range.sql
│   ├── UC6_add_gender_and_update_employee_payroll_data.sql
│   ├── UC7_calculate_sum_avg_min_max_count_by_gender.sql
│   ├── UC8_extend_employee_payroll_table_with_contact_and_department.sql
│   ├── UC9_extend_employee_payroll_table_with_payroll_fields.sql
│   ├── UC10_insert_terisa_in_sales_and_marketing_departments.sql
│   ├── UC11_implement_er_diagram_in_payroll_service_database.sql
│   └── UC12_retrieve_queries_using_normalized_payroll_tables.sql
│
├── output
│   ├── CSV files generated after executing each UC
│
└── README.md
```

---

# Use Cases Implemented

## UC1 – Create Payroll Service Database
- Created a database named `payroll_service`.
- Verified database creation using `SHOW DATABASES`.

---

## UC2 – Create Employee Payroll Table
Created table:

```
employee_payroll
```

Columns:
- id
- name
- salary
- start

---

## UC3 – Insert Employee Payroll Data
Inserted employee records into the `employee_payroll` table using `INSERT`.

Example employees:
- Bill
- Mark
- Charlie

---

## UC4 – Retrieve All Employee Payroll Data
Used:

```
SELECT * FROM employee_payroll;
```

to retrieve all employee records.

---

## UC5 – Retrieve Salary and Date Range Data
Queries implemented:

- Retrieve salary of a specific employee.
- Retrieve employees who joined within a date range using `BETWEEN`.

---

## UC6 – Add Gender Column and Update Data
Extended the table using:

```
ALTER TABLE
```

Added column:
```
gender
```

Updated employee gender using:

```
UPDATE employee_payroll
SET gender = 'M'
WHERE id IN (1,2,3);
```

---

## UC7 – Aggregate Functions by Gender
Implemented SQL aggregate functions:

- SUM
- AVG
- MIN
- MAX
- COUNT

Example query:

```
SELECT gender, SUM(salary)
FROM employee_payroll
GROUP BY gender;
```

---

## UC8 – Extend Employee Payroll Table
Added new columns:

- phone_number
- address (default value)
- department (NOT NULL)

---

## UC9 – Add Payroll Calculation Fields
Added payroll related attributes:

- basic_pay
- deductions
- taxable_pay
- tax
- net_pay

---

## UC10 – Demonstrate Data Redundancy
Inserted employee **Terisa** into multiple departments:

- Sales
- Marketing

This demonstrated the **redundancy problem in the current schema**.

---

## UC11 – Implement ER Diagram
Normalized the database by creating separate tables:

- employee
- department
- payroll
- employee_department

Established relationships using **foreign keys**.

This enabled **many-to-many relationship** between employees and departments.

---

## UC12 – Retrieve Data Using Normalized Tables
Reimplemented earlier queries using **JOIN operations**.

Example:

```
SELECT e.name, p.basic_pay
FROM employee e
JOIN payroll p
ON e.id = p.employee_id;
```

Ensured queries from:
- UC4
- UC5
- UC7

work correctly with the normalized schema.

---

# ER Diagram

The normalized schema contains the following relationships:

Employee  
1 → 1 Payroll  

Employee  
M → N Department  

Implemented through:

```
employee_department
```

bridge table.

---

# Git Workflow Used

```
git flow feature start UC*
git add .
git commit -m "UC* implementation"
git push origin feature/UC*
git flow feature finish -k UC*
git push origin develop
```

---

# Learning Outcomes

- MySQL Database Creation
- Table Design
- CRUD Operations
- SQL Queries and Filters
- Aggregate Functions
- Schema Modification
- Data Normalization
- ER Modeling
- Many-to-Many Relationships
- Git Flow Version Control

---

