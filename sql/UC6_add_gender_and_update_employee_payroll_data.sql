USE payroll_service;

-- Add gender column after name
ALTER TABLE employee_payroll
ADD gender CHAR(1) AFTER name;

-- Update gender values
UPDATE employee_payroll
SET gender = 'M'
WHERE id = 1 OR id = 2 OR id = 3;

-- View updated table
SELECT * FROM employee_payroll;