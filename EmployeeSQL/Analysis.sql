-- First question
SELECT employees.emp_no, sex,first_name,last_name, salary
From employees
Join salaries
On employees.emp_no= salaries.emp_no


-- second question
SELECT first_name,last_name, hire_date
From employees
WHERE hire_date BETWEEN '1986-01-01'AND '1987-01-01'

--third question
SELECT managers.emp_no,managers.dept_no,dept_name, last_name, first_name
FROM Managers
JOIN Employees
ON managers.emp_no = employees.emp_no
JOIN departments
ON managers.dept_no= departments.dept_no

--fourth question 
SELECT dept_employees.dept_no,dept_name,dept_employees.emp_no,last_name,first_name
FROM dept_employees
JOIN departments
ON dept_employees.dept_no= departments.dept_no
JOIN employees
ON dept_employees.emp_no = employees.emp_no

--fifth question
SELECT First_name, last_name, sex
FROM employees
WHERE First_name = 'Hercules'
AND last_name like 'B%'

--sixth question
SELECT ,dept_employees.emp_no,last_name,first_name
FROM dept_employees
JOIN departments
ON dept_employees.dept_no= departments.dept_no
JOIN employees
ON dept_employees.emp_no = employees.emp_no
WHERE dept_name= 'Sales'

--seventh question
SELECT dept_employees.dept_no,dept_name,dept_employees.emp_no,last_name,first_name
FROM dept_employees
JOIN departments
ON dept_employees.dept_no= departments.dept_no
JOIN employees
ON dept_employees.emp_no = employees.emp_no
WHERE dept_name = 'Sales'
OR dept_name= 'Development'

--eighth question
SELECT 
last_name,
Count(last_name) AS Employee_last_name_count
From Employees
Group by last_name
Order by Count(last_name) desc