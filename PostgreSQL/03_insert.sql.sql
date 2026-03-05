


-- ADDRESS
INSERT INTO ADDRESS VALUES
('ADR1001','44940 Bluestem Circle','Baton Rouge','Louisiana','United States'),
('ADR1002','029 Kropf Point','Richmond','Virginia','United States'),
('ADR1003','725 Pine Ave','Austin','Texas','United States'),
('ADR1004','19 Maple Street','Albany','New York','United States'),
('ADR1005','882 Lake Drive','Chicago','Illinois','United States'),
('ADR1006','12 Park Lane','Dallas','Texas','United States'),
('ADR1007','88 River Road','Miami','Florida','United States'),
('ADR1008','45 Hill View','Denver','Colorado','United States'),
('ADR1009','71 Ocean Blvd','San Diego','California','United States'),
('ADR1010','9 Sunset Ave','Phoenix','Arizona','United States'),
('ADR1011','101 Elm Street','Seattle','Washington','United States'),
('ADR1012','55 Forest Road','Portland','Oregon','United States'),
('ADR1013','23 Bay Street','Boston','Massachusetts','United States'),
('ADR1014','67 Lake Shore','Madison','Wisconsin','United States'),
('ADR1015','90 Cedar Ave','Boise','Idaho','United States');


-- SUBJECTS
INSERT INTO SUBJECTS VALUES
('SUBJ1001','Mathematics'),
('SUBJ1002','Science'),
('SUBJ1003','English'),
('SUBJ1004','History'),
('SUBJ1005','Music'),
('SUBJ1006','Physics'),
('SUBJ1007','Chemistry'),
('SUBJ1008','Biology'),
('SUBJ1009','Geography'),
('SUBJ1010','Computer Science'),
('SUBJ1011','Economics'),
('SUBJ1012','Civics'),
('SUBJ1013','Art'),
('SUBJ1014','Physical Education'),
('SUBJ1015','Psychology');


-- STUDENTS
INSERT INTO STUDENTS VALUES
('STD10001','Madison','Waider','Male',11,'2013-01-01'),
('STD10002','Jesselyn','Greatrex','Female',10,'2014-02-15'),
('STD10003','Aarav','Sharma','Male',12,'2012-04-18'),
('STD10004','Sophia','Brown','Female',9,'2015-06-21'),
('STD10005','Liam','Johnson','Male',13,'2011-08-30'),
('STD10006','Noah','Wilson','Male',11,'2013-03-11'),
('STD10007','Emma','Taylor','Female',10,'2014-05-19'),
('STD10008','Arjun','Mehta','Male',12,'2012-07-07'),
('STD10009','Olivia','Martin','Female',9,'2015-09-14'),
('STD10010','Ethan','Moore','Male',13,'2011-10-21'),
('STD10011','Aanya','Patel','Female',11,'2013-01-17'),
('STD10012','Lucas','White','Male',10,'2014-04-03'),
('STD10013','Mia','Hall','Female',12,'2012-06-28'),
('STD10014','Rohan','Verma','Male',9,'2015-08-09'),
('STD10015','Isla','Clark','Female',13,'2011-12-12');


-- PARENTS
INSERT INTO PARENTS VALUES
('P00001','Olin','Kerner','Male','ADR1003'),
('P00002','Sita','Rao','Female','ADR1004'),
('P00003','David','Carter','Male','ADR1005'),
('P00004','Emily','Davis','Female','ADR1002'),
('P00005','John','Lee','Male','ADR1001'),
('P00006','Robert','Wilson','Male','ADR1006'),
('P00007','Anita','Taylor','Female','ADR1007'),
('P00008','Suresh','Mehta','Male','ADR1008'),
('P00009','Daniel','Martin','Male','ADR1009'),
('P00010','Sarah','Moore','Female','ADR1010'),
('P00011','Kiran','Patel','Male','ADR1011'),
('P00012','George','White','Male','ADR1012'),
('P00013','Laura','Hall','Female','ADR1013'),
('P00014','Amit','Verma','Male','ADR1014'),
('P00015','Helen','Clark','Female','ADR1015');


-- SCHOOL
INSERT INTO SCHOOL VALUES
('SCHL1001','Springfield High School','CBSE','ADR1001'),
('SCHL1002','Riverside Public School','ICSE','ADR1002'),
('SCHL1003','Hill Valley Academy','State','ADR1003'),
('SCHL1004','Lakeside International','IB','ADR1004'),
('SCHL1005','Greenwood School','CBSE','ADR1005'),
('SCHL1006','Northview School','CBSE','ADR1006'),
('SCHL1007','Southridge School','ICSE','ADR1007'),
('SCHL1008','Eastwood Academy','State','ADR1008'),
('SCHL1009','Westfield High','IB','ADR1009'),
('SCHL1010','Sunrise School','CBSE','ADR1010'),
('SCHL1011','Green Valley School','ICSE','ADR1011'),
('SCHL1012','Oakridge School','State','ADR1012'),
('SCHL1013','Bluebell Academy','IB','ADR1013'),
('SCHL1014','Silver Oak School','CBSE','ADR1014'),
('SCHL1015','Cambridge Public','ICSE','ADR1015');


-- STAFF
INSERT INTO STAFF VALUES
('STF1001','Teaching','SCHL1001','Violet','Mascarenhas',33,'1987-01-05','M','ADR1002'),
('STF1002','Teaching','SCHL1002','Maryam','Shaheen',55,'1965-02-12','M','ADR1003'),
('STF1003','Teaching','SCHL1002','Thelma','Silva',56,'1964-03-01','M','ADR1002'),
('STF1004','Non-Teaching','SCHL1001','Shamala','Nivi',56,'1964-09-01','F','ADR1001'),
('STF1005','Non-Teaching','SCHL1005','Anita','Fernandes',38,'1982-11-14','F','ADR1005'),
('STF1007','Teaching','SCHL1004','Raj','Kumar',40,'1980-07-12','M','ADR1004'),
('STF1008','Non-Teaching','SCHL1003','Priya','Nair',29,'1991-03-20','F','ADR1005'),
('STF1009','Teaching','SCHL1004','James','Smith',45,'1975-09-09','M','ADR1001'),
('STF1010','Teaching','SCHL1006','Rahul','Kapoor',35,'1989-02-11','M','ADR1006'),
('STF1011','Teaching','SCHL1007','Neha','Singh',32,'1992-06-01','F','ADR1007'),
('STF1012','Non-Teaching','SCHL1008','Ramesh','Iyer',45,'1979-04-22','M','ADR1008'),
('STF1013','Teaching','SCHL1009','John','Miller',41,'1983-09-13','M','ADR1009'),
('STF1014','Teaching','SCHL1010','Pooja','Shah',29,'1995-01-30','F','ADR1010'),
('STF1015','Non-Teaching','SCHL1011','Sunil','Joshi',50,'1974-12-05','M','ADR1011'),
('STF1016','Teaching','SCHL1012','Anna','Brown',38,'1986-08-18','F','ADR1012'),
('STF1017','Teaching','SCHL1013','Mark','Lee',44,'1980-11-09','M','ADR1013'),
('STF1018','Non-Teaching','SCHL1014','Seema','Nair',36,'1988-03-27','F','ADR1014'),
('STF1019','Teaching','SCHL1015','Chris','Evans',39,'1985-07-16','M','ADR1015');

INSERT INTO staff VALUES -- Without Forign keys (school_id & address_id)
('STF2005','Non-Teaching','SCHL1002','SM','S',30,To_Date('1995-02-28','YYYY-MM-DD'),'M'),
('STF2006','Non-Teaching','SCHL1002','DK','D',35,To_Date('1990-11-18','YYYY-MM-DD'),'M'),
('STF2007','Non-Teaching','SCHL1001','KS','K',50,To_Date('1975-05-28','YYYY-MM-DD'),'M'),
('STF2008','Teaching','SCHL1002','SD','S',40,To_Date('1985-10-28','YYYY-MM-DD'),'F'),
('STF2009','Non-Teaching','SCHL1003','QD','Q',32,To_Date('1993-12-29','YYYY-MM-DD'),'M'),
('STF2010','Non-Teaching','SCHL1003','DF','D',30,To_Date('1995-01-22','YYYY-MM-DD'),'M'),
('STF2011','Non-Teaching','SCHL1002','DG','D',26,To_Date('1999-08-20','YYYY-MM-DD'),'M'),
('STF2013','Non-Teaching','SCHL1001','DJ','D',30,To_Date('1995-05-06','YYYY-MM-DD'),'M'),
('STF2015','Teaching','SCHL1003','FG','F',60,To_Date('1965-10-18','YYYY-MM-DD'),'M'),
('STF2016','Non-Teaching','SCHL1001','EH','E',50,To_Date('1975-05-28','YYYY-MM-DD'),'F'),
('STF2020','Non-Teaching','SCHL1001','GR','G',80,To_Date('1945-03-02','YYYY-MM-DD'),'M'),
('STF2022','Teaching','SCHL1002','ER','E',55,To_Date('1970-11-28','YYYY-MM-DD'),'M'),
('STF2025','Non-Teaching','SCHL1002','SF','S',25,To_Date('2000-07-28','YYYY-MM-DD'),'M'),
('STF2026','Non-Teaching','SCHL1002','GN','G',24,To_Date('2001-04-06','YYYY-MM-DD'),'M'),
('STF2028','Teaching','SCHL1002','EN','E',33,To_Date('1998-08-19','YYYY-MM-DD'),'M'),
('STF2030','Non-Teaching','SCHL1003','LJ','L',31,To_Date('1994-10-15','YYYY-MM-DD'),'M');


-- STAFF_SALARY
INSERT INTO STAFF_SALARY VALUES
('STF1001',50000),
('STF1002',30000),
('STF1003',80000),
('STF1004',90000),
('STF1005',25000),
('STF1010',52000),
('STF1011',48000),
('STF1012',30000),
('STF1013',60000),
('STF1014',45000),
('STF1015',28000),
('STF1016',55000),
('STF1017',62000),
('STF1018',32000),
('STF1019',58000);


-- CLASSES
INSERT INTO CLASSES VALUES
('CLS1001','Grade 1','SUBJ1001','STF1001'),
('CLS1002','Grade 2','SUBJ1002','STF1002'),
('CLS1003','Grade 3','SUBJ1003','STF1003'),
('CLS1004','Grade 4','SUBJ1004','STF1004'),
('CLS1005','Grade 5','SUBJ1005','STF1005'),
('CLS1006','Grade 6','SUBJ1006','STF1010'),
('CLS1007','Grade 7','SUBJ1007','STF1011'),
('CLS1008','Grade 8','SUBJ1008','STF1013'),
('CLS1009','Grade 9','SUBJ1009','STF1014'),
('CLS1010','Grade 10','SUBJ1010','STF1016'),
('CLS1011','Grade 6','SUBJ1011','STF1017'),
('CLS1012','Grade 7','SUBJ1012','STF1019'),
('CLS1013','Grade 8','SUBJ1013','STF1010'),
('CLS1014','Grade 9','SUBJ1014','STF1011'),
('CLS1015','Grade 10','SUBJ1015','STF1016');


-- STUDENT_CLASSES
INSERT INTO STUDENT_CLASSES VALUES
('STD10001','CLS1001'),
('STD10002','CLS1002'),
('STD10003','CLS1003'),
('STD10004','CLS1001'),
('STD10005','CLS1005'),
('STD10006','CLS1006'),
('STD10007','CLS1007'),
('STD10008','CLS1008'),
('STD10009','CLS1009'),
('STD10010','CLS1010'),
('STD10011','CLS1011'),
('STD10012','CLS1012'),
('STD10013','CLS1013'),
('STD10014','CLS1014'),
('STD10015','CLS1015');


-- STUDENT_PARENT
INSERT INTO STUDENT_PARENT VALUES
('STD10001','P00001'),
('STD10002','P00002'),
('STD10003','P00003'),
('STD10004','P00004'),
('STD10005','P00005'),
('STD10006','P00006'),
('STD10007','P00007'),
('STD10008','P00008'),
('STD10009','P00009'),
('STD10010','P00010'),
('STD10011','P00011'),
('STD10012','P00012'),
('STD10013','P00013'),
('STD10014','P00014'),
('STD10015','P00015');


-- DEPARTMENT 
INSERT INTO department VALUES
('D1','IT'),
('D2','HR'),
('D3','Finance'),
('D4','Admin'),
('D5','Marketing');


-- MANAGER 
INSERT INTO manager VALUES
('M1','Prem','D3'),
('M2','Shripadh','D4'),
('M3','Nick','D1'),
('M4','Cory','D1');


-- EMPLOYEE 
INSERT INTO employee VALUES
('E1','Rahul',15000,'D1','M1'),
('E2','Manoj',15000,'D1','M1'),
('E3','James',55000,'D2','M2'),
('E4','Michael',25000,'D2','M2'),
('E5','Ali',20000,'D4','M3'),
('E6','Robin',35000,'D4','M3'),
('E7','Sara',60000,NULL,NULL);


-- PROJECTS 
INSERT INTO projects VALUES
('P1','Data Migration','E1'),
('P1','Data Migration','E2'),
('P1','Data Migration','M3'),
('P2','ETL Tool','E1'),
('P2','ETL Tool','M4');


-- EMPLOYEE2
INSERT INTO employee2 VALUES
(1001,'Mohan','Admin',4000),
(1002,'Rajkumar','HR',3000),
(1003,'Akbar','IT',4000),
(1004,'Dorvin','Finance',6500),
(1005,'Robin','HR',3000),
(1006,'Rajesh','Finance',5000);


-- SALES 
INSERT INTO sales VALUES
(1,'Apple Originals 1','iPhone 12 Pro',1,1000),
(2,'Apple Originals 2','iPhone 12 Pro',2,1000);


-- COMPANY 
INSERT INTO company VALUES
('C001','techTFQ Solutions','Kuala Lumpur');


-- PRODUCT 
INSERT INTO product VALUES
('Phone','Apple','iPhone 12',1000),
('Laptop','Apple','MacBook Pro 13',2000);


-- FAMILY 
INSERT INTO family VALUES
('F1','David',4,'F5'),
('F5','Maryam',40,'F6'),
('F6','Stewart',70,NULL);


-- DEPARTMENTS0 
INSERT INTO departments0 VALUES
(1,'Engineering'),
(2,'Sales'),
(3,'HR'),
(4,'Research'),
(5,'Operations');


-- EMPLOYEES0 
INSERT INTO employees0 VALUES
(101,'Alice',1,'Bangalore',70000),
(102,'Bob',1,'Bangalore',80000);


-- EMPLOYEE_HISTORY0
INSERT INTO employee_history0 VALUES
(1001,201,1,120000,'2024-01-10');








