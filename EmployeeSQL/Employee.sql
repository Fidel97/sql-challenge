CREATE TABLE departments(
dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
dept_name VARCHAR(25) NOT NULL
);
-- create second table
CREATE TABLE dept_employees(
emp_no INTEGER NOT NULL PRIMARY KEY,
dept_no Varchar NOT NULL
PRIMARY KEY(emp_no,dept_no)
);
-- create third table
CREATE TABLE managers(
dept_no Varchar(25) NOT NULL,
emp_no INTEGER NOT NULL PRIMARY KEY
);
--create fourth table
CREATE TABLE employees(
emp_no INTEGER NOT NULL PRIMARY KEY,
emp_title_id Varchar(15) NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
birth_date Date NOT NULL,
first_name Varchar(50) NOT NULL,
last_name Varchar(50) NOT NULL,
sex Varchar(10) NOT NULL,
hire_date Date NOT NULL
);
--create fifth table 
CREATE TABLE salaries(
emp_no INTEGER NOT NULL PRIMARY KEY,
salary INTEGER NOT NULL
);

-- create sixth table 
CREATE TABLE title(
title_id VARCHAR(25) NOT NULL PRIMARY KEY,
title VARCHAR(25) NOT NULL
)





