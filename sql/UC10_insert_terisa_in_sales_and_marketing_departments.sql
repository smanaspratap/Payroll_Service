USE payroll_service;

-- Insert Terisa in Sales department
INSERT INTO employee_payroll 
(name, gender, salary, start, department)
VALUES 
('Terisa', 'F', 3000000.00, '2019-11-13', 'Sales');

-- Insert Terisa in Marketing department
INSERT INTO employee_payroll 
(name, gender, salary, start, department)
VALUES 
('Terisa', 'F', 3000000.00, '2019-11-13', 'Marketing');

-- View table data
SELECT * FROM employee_payroll;