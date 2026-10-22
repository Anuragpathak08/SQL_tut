CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

INSERT INTO departments (department_name)
VALUES 
('Sales'),
('Support'),
('Warehouse');

SELECT * FROM departments;