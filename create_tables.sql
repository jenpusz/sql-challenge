CREATE TABLE Dept_Manager (
emp_no  INTEGER NOT NULL,
dept_no VARCHAR(10) NOT NULL, 
PRIMARY KEY (emp_no,dept_no),

);

CREATE TABLE Employees (
emp_no VARCHAR(10) NOT NULL,
emp_title_id VARCHAR(10) NOT NULL,
birth_date DATE,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(10) NOT NULL,
hire_date  DATE, NOT NULL,
PRIMARY KEY (emp_no)

);

CREATE TABLE Salaries (
emp_no  VARCHAR(10) NOT NULL,
salary  INTEGER NOT NULL,
PRIMARY KEY (emp_no)
);


CREATE TABLE Titles (
title_id VARCHAR(10) NOT NULL,
title  VARCHAR(40) NOT NULL,
PRIMARY KEY (title_id)
);
