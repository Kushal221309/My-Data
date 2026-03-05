-- CSV File Into PostgreSQL

SELECT * FROM table_name

\copy table_name
FROM '/full/path/to/file.csv'
DELIMITER ','
CSV HEADER;



-- PostgreSQL Into CSV File


