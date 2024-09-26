-- Docs: https://docs.mage.ai/guides/sql-blocks
CREATE TABLE department_employee (
  emp_no integer,
  dept_no varchar(10),
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);

INSERT INTO department_employee (emp_no, dept_no)
SELECT 
    emp_no ,
    dept_no 
FROM {{ df_1 }};