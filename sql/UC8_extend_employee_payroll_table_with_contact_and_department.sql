USE payroll_service;

-- Add phone number column
ALTER TABLE employee_payroll
ADD phone_number VARCHAR(20);

-- Add address column with default value
ALTER TABLE employee_payroll
ADD address VARCHAR(255) DEFAULT 'TBD';

-- Add department column (not null)
ALTER TABLE employee_payroll
ADD department VARCHAR(100) NOT NULL DEFAULT 'General';

-- View table structure
DESCRIBE employee_payroll;

-- View data
SELECT * FROM employee_payroll;