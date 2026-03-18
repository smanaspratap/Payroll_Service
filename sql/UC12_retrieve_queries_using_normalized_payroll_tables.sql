USE payroll_service;

-- UC4 equivalent: retrieve all employee payroll data
SELECT e.id, e.name, e.gender, e.start, p.basic_pay
FROM employee e
JOIN payroll p
ON e.id = p.employee_id;

-- UC5 equivalent: retrieve salary of specific employee
SELECT e.name, p.basic_pay
FROM employee e
JOIN payroll p
ON e.id = p.employee_id
WHERE e.name = 'Bill';

-- UC5 equivalent: employees joined between date range
SELECT *
FROM employee
WHERE start BETWEEN CAST('2018-01-01' AS DATE)
AND DATE(NOW());

-- UC7 equivalent: sum salary by gender
SELECT e.gender, SUM(p.basic_pay) AS total_salary
FROM employee e
JOIN payroll p
ON e.id = p.employee_id
GROUP BY e.gender;

-- UC7 equivalent: count employees by gender
SELECT gender, COUNT(*) AS employee_count
FROM employee
GROUP BY gender;