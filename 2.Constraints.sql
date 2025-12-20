--# Creating Constraints in SQL Server
--1. NOT NULL Constraint
--2. primary Key Constraint
--3. Unique Constraint
--4. foreign Key Constraint
--5. Check Constraint


--Create Table with NOT NULL and primary Key Constraint
CREATE TABLE Employees
(
    EmployeeID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(25),
    Salary DECIMAL(10, 2)
);
--Insert Values into Employees Table
INSERT INTO Employees
    (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'HR', 50000.00),
    (2, 'Jane', 'Smith', 'IT', 60000.00),
    (3, 'Mike', 'Johnson', 'Finance', 55000.00);
--Select All Records from Employees Table
SELECT *
FROM Employees;


--Create Table with Unique and foreign Key Constraint
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE
);
CREATE TABLE Projects
(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
--Insert Values into Departments Table
INSERT INTO Departments
    (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');
--Insert Values into Projects Table
INSERT INTO Projects
    (ProjectID, ProjectName, DepartmentID)
VALUES
    (1, 'Project A', 1),
    (2, 'Project B', 2),
    (3, 'Project C', 3);
--Select All Records from Projects Table
SELECT *
FROM Projects;


--Create Table with Check Constraint
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2) CHECK (Price >= 0)
);
--Insert Values into Products Table
INSERT INTO Products
    (ProductID, ProductName, Price)
VALUES
    (1, 'Product A', 25.50),
    (2, 'Product B', 15.00),
    (3, 'Product C', -10.00);
-- This will fail due to CHECK constraint 
--Select All Records from Products Table
SELECT *
FROM Products;


--Drop Tables to Clean Up
DROP TABLE Products;
DROP TABLE Projects;
DROP TABLE Departments;
DROP TABLE Employees;
DROP TABLE Students;
--Drop Database to Clean Up
DROP DATABASE MSSQL;






--my second file code for constraints
--Use Existing Database
USE MSSQL;

--Create Table with various Constraints
CREATE TABLE Students
(
    StudentID INT CONSTRAINT PK_StudentID PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Branch INT CONSTRAINT FK_Branch FOREIGN KEY REFERENCES Branch(BranchID),
    email VARCHAR(50) CONSTRAINT unqEmail UNIQUE
);
--Create Branch Table referenced in foreign key
CREATE TABLE Branch
(
    BranchID INT CONSTRAINT PK_BranchID PRIMARY KEY,
    BranchName VARCHAR(10),
    Capacity INT CONSTRAINT defCapacity DEFAULT 200,
);


--Insert Values into Branch Table
INSERT INTO Branch
VALUES
    (100, 'CSE', 250),
    (101, 'ECE', 200),
    (102, 'ME', 150);

INSERT INTO Branch
    (BranchID, BranchName)
VALUES
    (103, 'IT');


--Select All Records from Branch Table
SELECT *
FROM Branch;



