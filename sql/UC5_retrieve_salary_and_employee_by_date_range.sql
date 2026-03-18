USE payroll_service;

-- Retrieve salary of employee Bill
SELECT salary
FROM employee_payroll
WHERE name = 'Bill';

-- Retrieve employees who joined between given date range
SELECT *
FROM employee_payroll
WHERE start BETWEEN CAST('2018-01-01' AS DATE)
AND DATE(NOW());