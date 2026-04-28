
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

SELECT * FROM student;

drop table student;

ALTER TABLE student 
CHANGE name actual_name VARCHAR(100);

DELETE FROM student
WHERE marks < 80;

alter table student
drop column grade;