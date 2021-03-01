--departments table first
DROP TABLE departments;
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR 
);
SELECT * FROM departments

DROP TABLE dept_emp;
CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR
);
SELECT * FROM dep_emp

DROP TABLE dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR FOREIGN KEY,
	emp_no INTEGER FOREIGN KEY	 
);
SELECT * FROM dept_manager

DROP TABLE employees
CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR,
	hire_date DATE NOT NULL
);
SELECT * FROM employees

DROP TABLE salaries
CREATE TABLE salaries(
	emp_no INTEGER FOREIGN KEY, 
	salary INTEGER PRIMARY KEY
);
SELECT * FROM salaries

DROP TABLE titles
CREATE TABLE titles(
	title_id VARCHAR FOREIGN KEY, 
	title VARCHAR PRIMARY KEY
);
SELECT * FROM titles