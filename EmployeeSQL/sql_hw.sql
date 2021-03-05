--To delete in case of mistakes
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--to read the data
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

--Queries

-- employees and salaries for first query
SELECT first_name,last_name, employees.emp_no FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no

-- employees for second query
 SELECT first_name,last_name,hire_date
 FROM employees
 WHERE hire_date = '1986'

-- employees, departments,dept_manager for third query

SELECT employees.last_name, employees.first_name, departments.dept_no,departments.dept_name,dept_manager.emp_no
FROM employees
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
LEFT JOIN departments ON dept_manager.dept_no=departments.dept_no

-- employees and departments for fourth query
SELECT employees.last_name, employees.first_name, departments.dept_name,dept_emp.emp_no
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no

-- employees for fifth query 
SELECT first_name,last_name,sex 
FROM employees
WHERE (first_name='Hercules' AND last_name LIKE 'B%')

-- employees and departments for sixth query. filtered by sales department
SELECT employees.last_name, employees.first_name, departments.dept_name,dept_emp.emp_no
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales'

-- employees and departments for seventh query. filtered by sales and dev.
SELECT employees.last_name, employees.first_name, departments.dept_name,dept_emp.emp_no
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales'

-- employees for eighth query.
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name