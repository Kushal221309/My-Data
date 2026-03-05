

-- # Database

CREATE DATABASE N;
ALTER DATABASE N RENAME TO K;
DROP DATABASE K;


-------------------------------------------------------------------------------------------------------


-- # Table create

CREATE TABLE staff(
staff_id VARCHAR(20), --PRIMARY KEY,
staff_type VARCHAR(30),
school_id VARCHAR(20),
first_name VARCHAR(30),
last_name VARCHAR(30),
age INT,
DoB DATE,
gender VARCHAR(10) CHECK(GENDER IN ('M','F')),
address_id VARCHAR(20)

--CONSTRAINT pk_stf PRIMARY KEY (staff_id), -- Add constraint for unique value

--CONSTRAINT fk_stf_schl FOREIGN KEY (school_id) REFERENCES school(school_id),
--CONSTRAINT fk_stf_addr FOREIGN KEY (address_id) REFERENCES address(address_id)
-- (We ensure that no invalide ID in inserted into the table.)  
);


-------------------------------------------------------------------------------------------------------


-- # Insert data in table

INSERT INTO staff VALUES 
('STF3001','Teaching','SCHL1001','Violet','Mascarenhas',33,'1987-01-05','M','ADR1002'),
('STF3002','Teaching','SCHL1002','Maryam','Shaheen',55,'1965-02-12','M','ADR1003'),
('STF3003','Teaching','SCHL1002','Thelma','Silva',56,'1964-03-01','M','ADR1002'),
('STF3004','Non-Teaching','SCHL1001','Shamala','Nivi',56,'1964-09-01','F','ADR1001'),
('STF3005','Non-Teaching','SCHL1005','Anita','Fernandes',38,'1982-11-14','F','ADR1005');


INSERT INTO staff VALUES -- Without Forign keys (school_id & address_id)
('STF4001','Non-Teaching','SCHL1002','SM','S',30,To_Date('1995-02-28','YYYY-MM-DD'),'M'),
('STF4002','Non-Teaching','SCHL1002','DK','D',35,To_Date('1990-11-18','YYYY-MM-DD'),'M'),
('STF4003','Non-Teaching','SCHL1001','KS','K',50,To_Date('1975-05-28','YYYY-MM-DD'),'M'),
('STF4004','Teaching','SCHL1002','SD','S',40,To_Date('1985-10-28','YYYY-MM-DD'),'F'),
('STF4005','Non-Teaching','SCHL1003','QD','Q',32,To_Date('1993-12-29','YYYY-MM-DD'),'M');




-------------------------------------------------------------------------------------------------------


 -- # Basics

SELECT * FROM staff; -- Fetch all the data 
SELECT staff_id, first_name, last_name FROM staff; -- Fetch only 3 data

SELECT * FROM staff WHERE staff_type = 'Teaching';  -- People with staff_type 'Teacher'

SELECT * FROM staff WHERE age>50; -- People over 50

SELECT * FROM staff ORDER BY age; -- Ascending order (ASC)

SELECT * FROM staff WHERE age BETWEEN 30 AND 50 ORDER BY age DESC; -- Ages 30 and 50 & Descending order 

SELECT * FROM staff WHERE age IN (30); -- Fetch data of people aged 30
SELECT * FROM staff WHERE age Not IN (30); -- Fetch data of people not aged 30

SELECT * FROM staff WHERE age >= 30 AND gender = 'M'; -- Only People over 30 & 'M'
SELECT * FROM staff WHERE age > 30 OR gender = 'M'; -- Both People over 30 & 'M'

SELECT * FROM staff WHERE first_name LIKE 'V%'; -- Names starting with 'V'
SELECT * FROM staff WHERE first_name LIKE '%M'; -- Names endinging with 'M'

SELECT * FROM staff WHERE LOWER(first_name) LIKE '%m'; -- Both lowercase and uppercase letters ('m' 'M')

SELECT DISTINCT staff_type FROM staff; -- Fetch unique values

-- SELECT * FROM staff GROUP BY staff_type;

SELECT age FROM staff LIMIT 5; -- Fetch only 5 data
SELECT age FROM staff ORDER BY age LIMIT 5; -- Fetch only 5 data with ASC


ALTER TABLE staff ADD COLUMN new_column VARCHAR(20); -- Add a new column
ALTER TABLE staff DROP COLUMN new_column; -- Drop new column 

ALTER TABLE staff RENAME TO staff_new; -- Change table name staff to staff_new
SELECT * FROM staff_new; 	-- Fetch new table
ALTER TABLE staff_new RENAME TO staff; -- Change table name staff_new to staff 

ALTER TABLE staff RENAME COLUMN age to ages; -- Change column name age to ages
ALTER TABLE staff RENAME COLUMN ageS to age; -- Change column name ages to age

ALTER TABLE staff ADD CONSTRAINT fk_stf_addr FOREIGN KEY(address_id) REFERENCES address(address_id); -- Add constraint for a foreign key
ALTER TABLE staff DROP CONSTRAINT fk_stf_addr; -- To remove Foreign key 

ALTER TABLE staff ADD CONSTRAINT pk_stf UNIQUE (staff_id); -- Add constraint for a unique key
ALTER TABLE staff DROP CONSTRAINT pk_stf; -- To remove unique key 



INSERT INTO staff(staff_id, first_name, last_name)
VALUES ('STF0000','XY','Z');
UPDATE staff SET dob = '2025-01-30' WHERE first_name = 'XY';
UPDATE staff SET staff_type = 'Teaching' WHERE staff_id = 'STF0000';
UPDATE staff SET gender = 'M', age = '0' WHERE staff_id = 'STF0000';

ALTER TABLE staff DROP COLUMN new_column; -- Delete column
DELETE FROM staff WHERE staff_id = 'STF0000'; -- Delete row

-- DROP TABLE staff0; -- Delete both schema and table
-- DELETE FROM staff0; -- Delete only table 

SELECT (2+3) AS total; -- Temporary table 
SELECT COUNT(*) AS total_row FROM staff; -- Row count 

SELECT (first_name||' '||last_name) AS full_name FROM staff -- Join 2 columns with space 


 

------------------------------------------------------------------------------------------------------




