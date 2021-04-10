--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
	
	FROM "Salaries" AS s
	INNER JOIN "Employees" AS e 
	ON e.emp_no = s.emp_no;
	
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT "Employees".first_name,
		"Employees".last_name,
		"Employees".hire_date
		FROM "Employees"
		WHERE "Employees".hire_date >= '1986-01-01' AND "Employees".hire_date <= '1986-12-31'
