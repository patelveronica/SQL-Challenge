-- Drop table if exists
DROP TABLE department;

-- Create department table
CREATE TABLE department (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
	);
	
-- Drop table if exists
DROP TABLE dept_employee;

-- Create dept_empl table
CREATE TABLE dept_employee (
	emp_no INT,
	dept_no VARCHAR
);

-- drop table if exists
DROP TABLE dept_manager;

-- Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT
);


-- Drop table if exists
DROP TABLE employees;

-- Create employees table
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name  VARCHAR,
	sex  VARCHAR,
	hire_date DATE
);

-- drop table if exists
DROP TABLE salaries;

-- Create salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary MONEY
)

-- drop table if exists
DROP TABLE titles;

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
)

select * from titles;
