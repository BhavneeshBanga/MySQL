CREATE DATABASE college;

USE college;

create table student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);
SELECT * FROM student;

INSERT INTO student
(rollno, name)
values
(11, "Aryan"),
(29, "Bhoomi");

SELECT * FROM student;

INSERT INTO student
(rollno, name)
values
(06, "arpit"),
(26, "Bhavay");

drop table student;

CREATE DATABASE xyz;
use xyz;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);


INSERT INTO employees
(id, name, salary)
VALUES
(1, "Aryan", 2500000),
(2, "Bhoomi", 2500000);



select * from employees;






create table temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

DROP temp1;

CREATE TABLE temp(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    primary key (id, name)
);



DROP emp;
CREATE TABLE ee(
	id INT,
    salary INT  DEFAULT 2500000);


INSERT INTO ee (id) VALUES (101);

select * from ee;






















