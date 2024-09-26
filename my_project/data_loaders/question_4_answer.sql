-- Docs: https://docs.mage.ai/guides/sql-blocks
-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select e.emp_no as employee_number, last_name, first_name, dept_name as 
department_name
from employees as e
join
department_employee as de
ON
e.emp_no = de.emp_no
join
departments as d
ON
d.dept_no = de.dept_no