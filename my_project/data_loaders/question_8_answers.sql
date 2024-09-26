-- Docs: https://docs.mage.ai/guides/sql-blocks
-- 8. In descending order, list the frequency count of employee last names,
--  i.e., how many employees share each last name.
select last_name, count(first_name) as frequency_count_last_name
from employees
group by last_name
order by count(first_name) desc;