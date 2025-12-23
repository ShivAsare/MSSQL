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








CREATE TABLE Alarm
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    AlarmID INT,
    AlarmDescription NVARCHAR(255),
    AlarmStart DATETIME,
    AlarmEnd   DATETIME,
    TotalDuration TIME(0),     -- hh:mm:ss (NO decimal)
    AckTime DATETIME,          -- ACK time
    UserName NVARCHAR(100),    -- Operator name
    Status NVARCHAR(20)        -- Active / Cleared
);

--Modify Column Data Type
ALTER TABLE Alarm
ALTER COLUMN TotalDuration TIME(0);



SELECT * FROM Alarm;

EXEC SP_HELP 'Alarm';



CREATE TABLE BatchRecord1
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    AlarmID INT,
    AlarmDescription NVARCHAR(255),
    AlarmStart DATETIME,
    AlarmEnd   DATETIME,
    TotalDuration TIME(0),     -- hh:mm:ss (NO decimal)
    AckTime DATETIME,          -- ACK time
    UserName NVARCHAR(100),    -- Operator name
    Status NVARCHAR(20)        -- Active / Cleared
);



--Create Table BatchReport1 with Unique Constraint on BatchNo
CREATE TABLE BatchRecord1
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    BatchNo NVARCHAR(50) NOT NULL,
    EquipmentID NVARCHAR(50),
    ProjectName NVARCHAR(100),
    Description NVARCHAR(255),
    RecipeName NVARCHAR(100),
    StartDateTime DATETIME,
    EndDateTime   DATETIME,
    VesselSelect NVARCHAR(50),
    CreatedBy NVARCHAR(100),
    DoneBy    NVARCHAR(100),
    CreatedDateTime DATETIME NOT NULL,
    DoneDateTime   DATETIME,

    Col1 NVARCHAR(100),
    Col2 NVARCHAR(100),
    Col3 NVARCHAR(100),
    Col4 NVARCHAR(100),
    Col5 NVARCHAR(100),
    Col6 NVARCHAR(100),
    Col7 NVARCHAR(100),
    Col8 NVARCHAR(100),
    Col9 NVARCHAR(100),
    Col10 NVARCHAR(100),

    CONSTRAINT UQ_BatchRecord1_BatchNo UNIQUE (BatchNo)
);

--Modify Column Data Type to DATETIME2(0)
ALTER TABLE BatchRecord1
ALTER COLUMN StartDateTime DATETIME2(0);
ALTER TABLE BatchRecord1
ALTER COLUMN EndDateTime DATETIME2(0);
ALTER TABLE BatchRecord1
ALTER COLUMN CreatedDateTime DATETIME2(0);
ALTER TABLE BatchRecord1
ALTER COLUMN DoneDateTime DATETIME2(0);

--DROP TABLE BatchRecord1;
SELECT * FROM BatchRecord1;
--Table full details
EXEC SP_HELP 'BatchRecord1';
--Select All Data from BatchRecord1 Order by ID Descending
SELECT * FROM BatchRecord1 ORDER BY ID DESC;



--Create Table BatchData
CREATE TABLE BatchData
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    BatchNo NVARCHAR(50),          -- ✅ ADDED (after ID)
    DateTime DATETIME NOT NULL,
    SteamLine1Temp_C       FLOAT NULL,
    MfgVesselTemp_C        FLOAT NULL,
    PremixingPressure_bar FLOAT NULL,
    MfgVacuum_mmHg         FLOAT NULL,
    MfgLoadCell_kg         FLOAT NULL,
    UltrasonicLevel_mm     FLOAT NULL,
    BottomStirrer_RPM      FLOAT NULL,

    StepDescription NVARCHAR(255) NULL
);
SELECT * FROM BatchData;

