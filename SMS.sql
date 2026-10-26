#1 > create the database

CREATE DATABASE StudentDB;

USE StudentDB;

#2 > create the table

CREATE TABLE Students (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(50),
    marks DECIMAL(5,2)
);

#3 > insert records

INSERT INTO Students (student_id, name, age, city, marks)
VALUES
	(1, 'Rahul', 20, 'Hyderabad', 85.50),
    (2, 'Priya', 19, 'Chennai', 75.00),
    (3, 'Ram', 21, 'Vizag', 93.00),
    (4, 'Sneha', 20, 'Delhi', 88.00),
    (5, 'Arun', 22, 'Hyderabad', 67.50),
    (6, 'Meena', 19, 'Bengaluru', 95.00);

#4 > display all students

SELECT * FROM Students;

#5 > find students who scored above 80

SELECT student_id, name, marks FROM Students WHERE marks > 80;

#6 > sort by highest marks

SELECT student_id, name, marks FROM Students ORDER BY marks DESC;

#7 > calculate the average marks 

SELECT AVG(marks) AS average_marks FROM Students;

#8 > count students in each city

SELECT city, COUNT(*) AS total_students FROM Students GROUP BY city;

#9 > update a students marks

UPDATE Students SET marks = 90 WHERE student_id = 1;

#10 > find students above the average

SELECT student_id, name, marks FROM Students 
WHERE marks > (SELECT AVG(marks) FROM Students);







