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

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no,
		dp.dept_name,
		dm.emp_no,
		em.last_name,
		em.first_name
		
		FROM "Department_Manager" AS dm 
		INNER JOIN "Departments" AS dp ON dp.dept_no = dm.dept_no
		INNER JOIN "Employees" AS em ON em.emp_no = dm.emp_no;
		
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT em.emp_no,
		em.last_name,
		em.first_name,
		de.dept_no,
		dp.dept_name
		
		FROM "Department_Emp" AS de
		INNER JOIN "Departments" AS dp ON dp.dept_no = de.dept_no
		INNER JOIN "Employees" AS em ON de.emp_no = em.emp_no; 

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex FROM "Employees" WHERE first_name = 'Hercules' AND last_name like 'B%';
		
		
		
		
		
		
		
		
		
		
		