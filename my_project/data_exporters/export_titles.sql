-- Docs: https://docs.mage.ai/guides/sql-blocks
CREATE TABLE titles (
  title_id varchar(20) primary key,
  title varchar(50)

);

INSERT INTO titles (title_id, title)
SELECT 
    title_id,
    title
FROM {{ df_1 }};