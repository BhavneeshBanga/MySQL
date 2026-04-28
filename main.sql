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

CREATE DATABASE college;
USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(106, "arpit", 98, "C", "UP"),
(111, "aryan", 99, "B", "Jharkhand"),
(126, "bhavay", 99, "A", "Harayana"),
(127, "bhavneesh", 100, "A", "Punjab"),
(129, "Bhoomi", 97, "D", "Harayana");

select * from student;
select name, grade from student;
select distinct city from student;

select * from student where marks = 100;

select * 
from student 
where marks > 99
limit 3;



select * from student order by marks desc;

select max(marks) 
from student;

select count(rollno)
from student;

select city , count(marks)
from student
group by city;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY city;


SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) desc;

SELECT grade , count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;




SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 99;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 100
ORDER BY city DESC;

select * from student;

UPDATE student
SET marks = 95
WHERE rollno = 106;



SET SQL_SAFE_UPDATES = 0;

UPDATE student
set marks = 11
where rollno = 129;

delete from student
where marks <12;

select * from student;

create table dept (
	id int primary key,
    name varchar(50)
);

INSERT INTO dept
VALUES
(101, "English"),
(102, "IT");

create table teacher (
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "adam", 101),
(102, "eve", 102);

UPDATE dept 
set id = 107
where id = 102;

select * from teacher;

