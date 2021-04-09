--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
	
	from "Salaries" as s
	Inner Join "Employees" as e 
	on e.emp_no = s.emp_no;
	
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

