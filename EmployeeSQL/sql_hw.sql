--To delete in case of mistakes
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR
);

CREATE TABLE employees(
	emp_no INTEGER,
	emp_title_id VARCHAR,
	birth_date DATE NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY	(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER, 
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR, 
	title VARCHAR,
	PRIMARY KEY (title)
	--FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);

-- employees and salaries for first query
SELECT first_name,last_name, employees.emp_no FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
-- employees for second query
 SELECT first_name,last_name,hire_date
 FROM employees
 WHERE hire_date = '1986'

-- employees and dept_manager for third query

-- employees and departments for fourth query

-- employees for fifth query 
SELECT first_name,last_name,sex 
FROM employees
WHERE (first_name='Hercules' AND last_name LIKE 'B%')
-- employees and departments for sixth query. filtered by sales department

-- employees and departments for seventh query. filtered by sales and dev.

-- employees for eighth query.
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name