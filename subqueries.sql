
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
(106, "arpit", 67, "C", "UP"),
(111, "aryan", 79, "B", "Jharkhand"),
(126, "bhavay", 99, "A", "Harayana"),
(127, "bhavneesh", 100, "A", "Punjab"),
(129, "Bhoomi", 81, "D", "Harayana");

select * from student;

select avg(marks)
from student;

select name, marks
from student
where marks > 85.2000


SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);



select name, marks
from student
where marks%2=0;


select name, marks
from student
where marks%2=0;


SELECT name
FROM student
WHERE rollno IN (
	SELECT rollno
    FROM student
    WHERE rollno % 2 = 0
);



select max(marks)
from (select * from student
where city = "punjab") as temp;


select max(marks) 
from student
where city = "punjab";
