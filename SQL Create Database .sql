
/* Skills Used: Aggregate Functions, ORDER BY, GROUP BY, SELECT DISTINCT,
Basic SQL Syntax, CREATE TABLE, Key Constraints */

CREATE DATABASE StudentDB

---CREATING A TABLE TO RECCORD STUDENTS--
CREATE TABLE StudentRecords (
    Student_ID int NOT NULL,
    First_name varchar(50) NOT NULL,
    Last_name varchar(50) NOT NULL,
    Age int, 
    Gender Varchar(9),
    Course Varchar(100),
    Gade_GPA DECIMAL (4,2)
);

--REFERENCE POINT--
SELECT *
FROM StudentRecords;

--RENAME COLUMN--
EXEC sp_rename 'StudentRecords.Gade_GPA', 'Grade_GPA', 'Column';
EXEC sp_rename 'StudentRecords.Course', 'Subject', 'Column';

--INCLUDE KEY CONSTRAINTS--
ALTER TABLE StudentRecords 
ADD CONSTRAINT student_pk PRIMARY KEY (Student_ID)

--POPULATING DATABASE--
INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
VALUES (101, 'Jade', 'Sidsaff', 22, 'Female', 'Law', 4.0);

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (102, 'Alysia', 'Kleinber', 23, 'Female', 'Business', 3.2); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (103, 'Sigrid', 'Nudde', 20, 'Female', 'Telecommunications', 2.5); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (104, 'Sabine', 'Daviot', 24, 'Female', 'Electrical Engineering', 4.0); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (105, 'Crissie', 'Esp', 21, 'Female', 'Law', 3.5); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (106, 'Shina', 'Davidowich', 22, 'Female', 'Business', 4.0); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (107, 'Nicol', 'McRill', 32, 'Male', 'Electrical Engineering', 3.0);

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (108, 'Cleve', 'Entreis', 22, 'Male', 'Business', 1.2); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (109, 'Gregor', 'Aizlewood', 20, 'Male', 'Theology', 3.7); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (110, 'Antons', 'Cayet', 34, 'Male', 'Electrical Engineering', 4.0); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (111, 'Whitney', 'Sone', 25, 'Male', 'Theology', 2.4); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (112, 'Zuzana', 'Poole', 22, 'Female', 'Telecommunications', 3.5); 
     
INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (113, 'Caryl', 'Eltun', 35, 'Male', 'Law', 4.2); 

INSERT INTO StudentRecords (Student_ID, First_name, Last_name,
Age, Gender, Subject, Grade_GPA)
    VALUES (114, 'Ellene', 'Entreis', 22, 'Female', 'Telecommunications', 3.8); 




--SQL Queries to Answer Following Questions---
--Q: What is the average GPA for all students in the database?
SELECT AVG(Grade_GPA) As Grade_GPA
FROM StudentRecords;


--Q:Create an SQL query that counts the number of students enrolled
--in each crouse and lists the course name alongside the count
SELECT Subject, COUNT (Student_ID) as Student_Enrollled
FROM StudentRecords
GROUP BY Subject;

--Q:Retrieve the names of the top 10 students with the
--highest GPA in the database.
SELECT TOP 10 First_name, Last_name, Grade_GPA
FROM StudentRecords 
ORDER BY Grade_GPA DESC;

--Q:Implement a query to list all unique subject courses available in
--the database. 
SELECT DISTINCT Subject
FROM StudentRecords;

--Q:Write a query to count the number of male and female students in 
--the database. 
SELECT Gender, COUNT (Student_ID) as Students_Enrolled
FROM StudentRecords
GROUP BY Gender;
