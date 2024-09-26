-- -- Docs: https://docs.mage.ai/guides/sql-blocks
-- 7. List all employees in the Sales and Development departments,
--  including their employee number, last name, first name, and department name.
select e.emp_no as employee_number, last_name, first_name,
dept_name as department_name
from employees as e
join
department_employee as de
ON
e.emp_no = de.emp_no
join
departments as d
ON
de.dept_no = d.dept_no
and
(dept_name = 'Sales' or dept_name = 'Development');