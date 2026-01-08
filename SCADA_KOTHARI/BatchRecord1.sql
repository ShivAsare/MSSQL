--Create Table BatchReport1 with Unique Constraint on BatchNo
CREATE TABLE BatchRecord1 (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    BatchNo NVARCHAR(50) NOT NULL,
    EquipmentID NVARCHAR(50),
    ProjectName NVARCHAR(100),
    Description NVARCHAR(255),
    RecipeName NVARCHAR(100),
    StartDateTime DATETIME,
    EndDateTime DATETIME,
    VesselSelect NVARCHAR(50),
    CreatedBy NVARCHAR(100),
    DoneBy NVARCHAR(100),
    CreatedDateTime DATETIME NOT NULL,
    DoneDateTime DATETIME,
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
SELECT *
FROM BatchRecord1;

--Table full details
EXEC SP_HELP 'BatchRecord1';

--Select All Data from BatchRecord1 Order by ID Descending
SELECT *
FROM BatchRecord1
ORDER BY ID DESC;









--Create Table BatchData
CREATE TABLE BatchData (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    BatchNo NVARCHAR(50),
    -- ✅ ADDED (after ID)
    DateTime DATETIME NOT NULL,
    SteamLine1Temp_C FLOAT NULL,
    MfgVesselTemp_C FLOAT NULL,
    PremixingPressure_bar FLOAT NULL,
    MfgVacuum_mmHg FLOAT NULL,
    MfgLoadCell_kg FLOAT NULL,
    UltrasonicLevel_mm FLOAT NULL,
    BottomStirrer_RPM FLOAT NULL,
    StepDescription NVARCHAR(255) NULL
);
SELECT *
FROM BatchData;
