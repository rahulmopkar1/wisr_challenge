-- Docs: https://docs.mage.ai/guides/sql-blocks
-- 3. List the manager of each department with the following information:
--  department number, department name, the manager's employee number,
--   last name, first name.
select d.dept_no as department_number, dept_name as department_name,
e.emp_no as employee_number, last_name, first_name
from employees as e
join
department_manager as dm
ON
e.emp_no = dm.emp_no
join
departments as d
ON
dm.dept_no = d.dept_no