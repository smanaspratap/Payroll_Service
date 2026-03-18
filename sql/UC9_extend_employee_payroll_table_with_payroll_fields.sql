USE payroll_service;

-- Add payroll related columns
ALTER TABLE employee_payroll
ADD basic_pay DOUBLE AFTER department,
ADD deductions DOUBLE AFTER basic_pay,
ADD taxable_pay DOUBLE AFTER deductions,
ADD tax DOUBLE AFTER taxable_pay,
ADD net_pay DOUBLE AFTER tax;

-- View updated table structure
DESCRIBE employee_payroll;

-- View table data
SELECT * FROM employee_payroll;