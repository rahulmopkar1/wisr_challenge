-- Docs: https://docs.mage.ai/guides/sql-blocks
-- 2. List first name, last name, and hire date for employees who were
--  hired in 1986.
select first_name, last_name, hire_date
from employees
where year(hire_date) = 1986;