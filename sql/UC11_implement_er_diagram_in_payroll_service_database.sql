USE payroll_service;

-- Create employee table
CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    gender CHAR(1),
    start DATE
);

-- Create department table
CREATE TABLE department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create payroll table
CREATE TABLE payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    basic_pay DOUBLE,
    deductions DOUBLE,
    taxable_pay DOUBLE,
    tax DOUBLE,
    net_pay DOUBLE,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);

-- Create employee_department table for many-to-many relation
CREATE TABLE employee_department (
    employee_id INT,
    department_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- View tables
SHOW TABLES;