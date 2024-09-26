-- Docs: https://docs.mage.ai/guides/sql-blocks
CREATE TABLE salaries (
  emp_no integer primary key,
  salary integer,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

INSERT INTO salaries (emp_no, salary)
SELECT 
    emp_no,
    salary
FROM {{ df_1 }};