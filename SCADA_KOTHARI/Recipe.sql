--Recipe1 Table with Unique Constraint on RecipeName
CREATE TABLE Recipe1 (
    ID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    RecipeName NVARCHAR(200) NOT NULL,
    Col1 REAL NULL,
    Col2 REAL NULL,
    Col3 REAL NULL,
    Col4 REAL NULL,
    Col5 REAL NULL,
    Col6 REAL NULL,
    Col7 REAL NULL,
    Col8 REAL NULL,
    Col9 REAL NULL,
    Col10 REAL NULL,
    Col11 REAL NULL,
    Col12 REAL NULL,
    Col13 REAL NULL,
    Col14 REAL NULL,
    Col15 REAL NULL,
    Col16 REAL NULL,
    Col17 REAL NULL,
    Col18 REAL NULL,
    Col19 REAL NULL,
    Col20 REAL NULL,
    CONSTRAINT UQ_Recipe1_RecipeName UNIQUE (RecipeName)
);


--Recipe2 Table with Unique Constraint on RecipeName
CREATE TABLE Recipe2 (
    ID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    RecipeName NVARCHAR(200) NOT NULL,
    Col1 REAL NULL,
    Col2 REAL NULL,
    Col3 REAL NULL,
    Col4 REAL NULL,
    Col5 REAL NULL,
    Col6 REAL NULL,
    Col7 REAL NULL,
    Col8 REAL NULL,
    Col9 REAL NULL,
    Col10 REAL NULL,
    Col11 REAL NULL,
    Col12 REAL NULL,
    Col13 REAL NULL,
    Col14 REAL NULL,
    Col15 REAL NULL,
    Col16 REAL NULL,
    Col17 REAL NULL,
    Col18 REAL NULL,
    Col19 REAL NULL,
    Col20 REAL NULL,
    CONSTRAINT UQ_Recipe2_RecipeName UNIQUE (RecipeName)
);



--Recipe3 Table with Unique Constraint on RecipeName
CREATE TABLE Recipe3 (
    ID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    RecipeName NVARCHAR(200) NOT NULL,
    Col1 REAL NULL,
    Col2 REAL NULL,
    Col3 REAL NULL,
    Col4 REAL NULL,
    Col5 REAL NULL,
    Col6 REAL NULL,
    Col7 REAL NULL,
    Col8 REAL NULL,
    Col9 REAL NULL,
    Col10 REAL NULL,
    Col11 REAL NULL,
    Col12 REAL NULL,
    Col13 REAL NULL,
    Col14 REAL NULL,
    Col15 REAL NULL,
    Col16 REAL NULL,
    Col17 REAL NULL,
    Col18 REAL NULL,
    Col19 REAL NULL,
    Col20 REAL NULL,
    CONSTRAINT UQ_Recipe3_RecipeName UNIQUE (RecipeName)
);




