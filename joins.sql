
create table student(
	id int primary key,
    name varchar(50),
    manager_id int
);
insert into student(id, name, manager_id)
values
(106, "arpit", 127),
(111, "aryan", 129),
(126, "bhavay", 106),
(127, "bhavneesh", null),
(129, "Bhoomi", 126);
select * from student;

SELECT *
FROM student as a
JOIN student as b
ON a.id = b.manager_id;

SELECT a.name, b.name
FROM student as a
JOIN student as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM student as a
JOIN student as b
ON a.id = b.manager_id