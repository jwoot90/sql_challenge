--List the employee number, last name, first name, sex, and salary of each employee 
SELECT e.emp_no, e.last_name,e.first_name,e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name, hire_date
FROM employees
WHERE hire_date < '1/1/1987' AND hire_date > '12/31/1985';


--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dm.emp_no, dm.dept_no, d.dept_name,e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
INNER JOIN employees as e
ON  dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 

SELECT e.emp_no, de.dept_no, d.dept_name,e.last_name, e.first_name
FROM employees as e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name 
SELECT e.last_name, e.first_name,e.emp_no
FROM employees AS e 
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
WHERE dept_no = 'd007' ;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.last_name, e.first_name,e.emp_no,d.dept_name
FROM employees AS e 
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd005' OR de.dept_no = 'd007'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;
