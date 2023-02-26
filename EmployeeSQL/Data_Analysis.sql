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

select e.emp_no, e.last_name, e.first_name, d.dept_no,b.dept_name
from employees as e 
join dept_emp as d
on e.emp_no= d.emp_no
join departments as b
on d.dept_no= b.dept_no 

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
 select e.emp_no, e.last_name, e.first_name, d.dept_no,b.dept_name
from employees as e 
join dept_emp as d
on e.emp_no= d.emp_no
join departments as b
on d.dept_no= b.dept_no 
-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
 select e.last_name, e.first_name, e.sex
 FROM employees as e 
 WHERE first_name ='Hercules' and last_name like 'B%'



 -- 6. List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name,b.dept_name
from employees as e 
join dept_emp as d
on e.emp_no= d.emp_no
join departments as b
on d.dept_no= b.dept_no
WHERE dept_name= 'Sales'

-- 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_no,b.dept_name
from employees as e 
join dept_emp as d
on e.emp_no= d.emp_no
join departments as b
on d.dept_no= b.dept_no
WHERE dept_name = 'Sales' OR dept_name ='Development'
;

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(*)
FROM employees as e
GROUP BY e.last_name
HAVING COUNT(*) > 1
ORDER BY
       count DESC;

