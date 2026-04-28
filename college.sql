
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
(106, "arpit", 100, "C", "UP"),
(111, "aryan", 99, "B", "Jharkhand"),
(126, "bhavay", 99, "A", "Harayana"),
(127, "bhavneesh", 100, "A", "Punjab"),
(129, "Bhoomi", 97, "D", "Harayana");

select * from student;

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