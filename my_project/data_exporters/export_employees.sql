-- Docs: https://docs.mage.ai/guides/sql-blocks
CREATE TABLE employees (
  emp_no integer primary key,
  emp_title_id varchar(50),
  birth_date date,
  first_name varchar(50),
  last_name varchar(50),
  sex varchar(10),
  hire_date date,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) ON DELETE CASCADE
);

INSERT INTO employees (emp_no, emp_title_id, birth_date, first_name,
last_name, sex, hire_date)
SELECT 
    emp_no,
    emp_title_id,
    STR_TO_DATE(birth_date, '%m/%d/%Y') AS birth_date,   -- Convert from MM/DD/YYYY to YYYY-MM-DD
    first_name,
    last_name,
    sex,
    STR_TO_DATE(hire_date, '%m/%d/%Y') AS hire_date 
FROM {{ df_1 }};