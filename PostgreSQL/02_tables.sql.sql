


-- ADDRESS
CREATE TABLE ADDRESS (
    address_id VARCHAR(20) PRIMARY KEY,
    street VARCHAR(250),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100)
);


-- SUBJECTS
CREATE TABLE SUBJECTS (
    subject_id VARCHAR(20) PRIMARY KEY,
    subject_name VARCHAR(100)
);


-- STUDENTS
CREATE TABLE STUDENTS (
    id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    dob DATE
);


-- PARENTS
CREATE TABLE PARENTS (
    id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    address_id VARCHAR(20),
    FOREIGN KEY (address_id) REFERENCES ADDRESS(address_id)
);


-- SCHOOL
CREATE TABLE SCHOOL (
    school_id VARCHAR(20) PRIMARY KEY,
    school_name VARCHAR(100),
    education_board VARCHAR(20),
    address_id VARCHAR(20),
    FOREIGN KEY (address_id) REFERENCES ADDRESS(address_id)
);


-- STAFF
CREATE TABLE STAFF (
    staff_id VARCHAR(20) PRIMARY KEY,
    staff_type VARCHAR(30),
    school_id VARCHAR(20),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INT,
    dob DATE,
    gender VARCHAR(10),
    address_id VARCHAR(20),
    FOREIGN KEY (school_id) REFERENCES SCHOOL(school_id),
    FOREIGN KEY (address_id) REFERENCES ADDRESS(address_id)
);


-- STAFF_SALARY
CREATE TABLE STAFF_SALARY (
    staff_id VARCHAR(20),
    salary NUMERIC(10,2),
    FOREIGN KEY (staff_id) REFERENCES STAFF(staff_id)
);


-- CLASSES
CREATE TABLE CLASSES (
    class_id VARCHAR(20) PRIMARY KEY,
    class_name VARCHAR(50),
    subject_id VARCHAR(20),
    teacher_id VARCHAR(20),
    FOREIGN KEY (subject_id) REFERENCES SUBJECTS(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES STAFF(staff_id)
);


-- STUDENT_CLASSES
CREATE TABLE STUDENT_CLASSES (
    student_id VARCHAR(20),
    class_id VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES STUDENTS(id),
    FOREIGN KEY (class_id) REFERENCES CLASSES(class_id)
);


-- STUDENT_PARENT
CREATE TABLE STUDENT_PARENT (
    student_id VARCHAR(20),
    parent_id VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES STUDENTS(id),
    FOREIGN KEY (parent_id) REFERENCES PARENTS(id)
);


-- DEPARTMENT 
CREATE TABLE department (
    dept_id VARCHAR(20) PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- MANAGER
CREATE TABLE manager (
    manager_id VARCHAR(20) PRIMARY KEY,
    manager_name VARCHAR(50),
    dept_id VARCHAR(20),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


-- EMPLOYEE 
CREATE TABLE employee (
    emp_id VARCHAR(20) PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id VARCHAR(20),
    manager_id VARCHAR(20),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id)
);


-- PROJECTS
CREATE TABLE projects (
    project_id VARCHAR(20),
    project_name VARCHAR(50),
    team_member_id VARCHAR(20)
);


-- EMPLOYEE2
CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_name VARCHAR(30),
    salary INT
);


-- SALES 
CREATE TABLE sales (
    store_id INT,
    store_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price INT
);


-- COMPANY 
CREATE TABLE company (
    company_id VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(50),
    location VARCHAR(20)
);


-- PRODUCT
CREATE TABLE product (
    product_category VARCHAR(25),
    brand VARCHAR(25),
    product_name VARCHAR(25),
    price INT
);


-- FAMILY
CREATE TABLE family (
    member_id VARCHAR(10),
    name VARCHAR(30),
    age INT,
    parent_id VARCHAR(10)
);


-- DEPARTMENTS0 
CREATE TABLE departments0 (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);


-- EMPLOYEES0
CREATE TABLE employees0 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    location VARCHAR(100),
    salary DECIMAL(12,2),
    FOREIGN KEY (department_id) REFERENCES departments0(id)
);


-- EMPLOYEE_HISTORY0
CREATE TABLE employee_history0 (
    id INT PRIMARY KEY,
    employee_id INT,
    department_id INT,
    salary DECIMAL(12,2),
    change_date DATE
);







