-- Docs: https://docs.mage.ai/guides/sql-blocks
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,  -- Define the primary key
    dept_name VARCHAR(255)            -- Define the dept_name with data type
);

INSERT INTO departments (dept_no, dept_name)
SELECT 
    dept_no, dept_name
FROM {{ df_1 }};