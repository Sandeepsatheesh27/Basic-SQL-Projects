CREATE DATABASE employee_payroll;
USE employee_payroll;

CREATE TABLE department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    dept_id INT,
    email VARCHAR(100),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    total_salary DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO department (dept_name) VALUES
('IT'), ('HR'), ('Finance');

INSERT INTO employees (emp_name, dept_id, email) VALUES
('Sandeep S S', 1, 'sandeepsatheesh278@gmail.com'),
('Arun Kumar', 2, 'arun@example.com'),
('Priya N', 3, 'priya@example.com');

INSERT INTO salary (emp_id, base_salary, bonus, total_salary) VALUES
(1, 45000, 5000, 50000),
(2, 40000, 3000, 43000),
(3, 50000, 6000, 56000);
