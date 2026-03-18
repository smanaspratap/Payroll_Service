USE payroll_service;

-- Sum of salary by gender
SELECT gender, SUM(salary) AS total_salary
FROM employee_payroll
GROUP BY gender;

-- Average salary by gender
SELECT gender, AVG(salary) AS average_salary
FROM employee_payroll
GROUP BY gender;

-- Minimum salary by gender
SELECT gender, MIN(salary) AS minimum_salary
FROM employee_payroll
GROUP BY gender;

-- Maximum salary by gender
SELECT gender, MAX(salary) AS maximum_salary
FROM employee_payroll
GROUP BY gender;

-- Count employees by gender
SELECT gender, COUNT(*) AS employee_count
FROM employee_payroll
GROUP BY gender;