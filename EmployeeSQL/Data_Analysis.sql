--Data Analysis
-- 1.List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no=s.emp_no


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees as e
WHERE e.hire_date between '1986-01-01' and '1986-12-31'

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name, d.dept_no, p.dept_name
from employees as e 
join dept_emp as d
join departments as p
on e.emp_no= d.emp_no
ADD p.depart_name
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

-- 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
