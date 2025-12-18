
--Create Database Query
CREATE DATABASE MSSQL


--Created Table and enter few column 
USE MSSQL
CREATE TABLE Students
(
    StudentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Branch VARCHAR(25),
    Semester INT
);

--Enter Table in Add One column
ALTER TABLE Students
ADD email VARCHAR(50)

--Delete One Coloum(Semester)
ALTER TABLE Students
DROP Column Semester

--Update Column Data Type
ALTER TABLE Students
ALTER COLUMN Branch VARCHAR(25)

--Table full details
EXEC SP_HELP 'Students';

--Insert Table in few value enter of Query
INSERT INTO Students
VALUES(100, 'Atul', 'Gupta', 'CSE', 2)
INSERT INTO Students
VALUES(100, 'Amit', 'Sharma', 'EE', 4)
INSERT INTO Students
VALUES(100, 'Raja', 'Mehta', 'IT', 1)
INSERT INTO Students
VALUES(100, 'Atul', 'Sharma', 'ME', 3)

--Show All Value in table and column
SELECT *
FROM Students

--Enter Value Only two column
INSERT INTO Students
    (StudentID,FirstName)
VALUES(100, 'Goyal')

--Update Column Value in Table
UPDATE Students
SET email = 'atul.gupta@example.com' ,FirstName='Bobby'
WHERE LastName='Gupta'