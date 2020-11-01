--Data Engineering
--#1
CREATE TABLE titles(
	title_id VARCHAR(255)
	,title VARCHAR(255)
	,PRIMARY KEY(title_id)
);
--SELECT * FROM titles;

--#2
CREATE TABLE departments(
	dept_no VARCHAR(255)
	,dept_name VARCHAR(255)
	,PRIMARY KEY(dept_no)
);
--SELECT * FROM departments;

--#3
CREATE TABLE employees(
	emp_no INT NOT NULL
	,emp_title_id VARCHAR(255)
	,birth_date DATE
	,first_name VARCHAR(255)
	,last_name VARCHAR(255)
	,sex VARCHAR(255)
	,hire_date DATE
	,PRIMARY KEY(emp_no)
	,FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);
--SELECT * FROM employees;

--#4
CREATE TABLE salaries(
	emp_no INT 
	,salary INT
	,PRIMARY KEY(emp_no)
	,FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
--SELECT * FROM salaries;

--#5
CREATE TABLE dept_emp(
	emp_no INT
	,dept_no VARCHAR(255)
	,PRIMARY KEY(emp_no, dept_no)
	,FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	,FOREIGN KEY(dept_no) REFERENCES deparments(dept_no)
);
--SELECT * FROM dept_emp;

--#6
CREATE TABLE dept_manager(
	dept_no VARCHAR(255)
	,emp_no INT
	,PRIMARY KEY(emp_no)
	,FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	,FOREIGN KEY(dept_no) REFERENCES deparments(dept_no)
);
--SELECT * FROM dept_manager;