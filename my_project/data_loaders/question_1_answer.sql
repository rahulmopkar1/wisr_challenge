-- Docs: https://docs.mage.ai/guides/sql-blocks

-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
select e.emp_no as employee_number, last_name, first_name, sex, salary 
from employees as e 
join
salaries as s
ON
e.emp_no = s.emp_no
;