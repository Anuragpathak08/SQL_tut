-- CREATE TABLE departments(
--     department_id SERIAL PRIMARY KEY,
--     department_name VARCHAR(50) NOT NULL
-- );

-- INSERT INTO departments (department_name)
-- VALUES 
-- ('Sales'),
-- ('Support'),
-- ('Warehouse');

-- SELECT * FROM departments;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY, --cannot be null it is
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20),
    bio TEXT,
    job_title VARCHAR(50) NOT NULL,
    salary INT NOT NULL CHECK (salary > 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    hire_date DATE NOT NULL,
    last_login TIMESTAMP,
    employee_status VARCHAR(20) NOT NULL DEFAULT 'active'
                    CHECK(
                        employee_status IN ('Active', 'on_leave', 'terminated')
                    ),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    department_id INT REFERENCES departments(department_id)
)

