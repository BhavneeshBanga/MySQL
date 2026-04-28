
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

SELECT * FROM student;

ALTER TABLE student
ADD  COLUMN age INT;

SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;


ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

SELECT * FROM student;

ALTER TABLE student
CHANGE age stu_age int;


INSERT INTO student
(rollno, name, marks, stu_age)
Values
(107, "Gargi", 68, 100);

SELECT * FROM student;


ALTER TABLE student
DROP COLUMN stu_age;

SELECT * FROM student;

ALTER TABLE stu
RENAME TO student;

TRUNCATE TABLE student;
