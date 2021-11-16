--List employee details: employee number, last name, first name, sex, and salary
SELECT
e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM
Employees e
JOIN
Salaries s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT
first_name, last_name, hire_date
FROM
Employees
WHERE
EXTRACT (YEAR FROM hire_date) = '1986';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name
SELECT
d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM Departments d
JOIN Dept_Manager dm
ON d.dept_no = dm.dept_no
JOIN Employees e
ON dm.emp_no = e.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name

SELECT 
e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Manager dm
ON e.emp_no = dm.emp_no
JOIN Departments d
ON d.dept_no = dm.dept_no;

--List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Manager dm
ON e.emp_no = dm.emp_no
JOIN Departments d
ON d.dept_no = dm.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Manager dm
ON e.emp_no = dm.emp_no
JOIN Departments d
ON d.dept_no = dm.dept_no
WHERE Dept_Name = 'Sales' 
OR 
dept_name = 'Development'

--In descending order, list the frequency count of 
--employee last names, i.e., how many employees share each last name

SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM Employees
GROUP BY last_name 
ORDER BY "last_name_count" DESC
