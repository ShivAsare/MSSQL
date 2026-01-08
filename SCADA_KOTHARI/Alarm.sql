--Create Table Alarm with Unique Constraint on AlarmID
CREATE TABLE Alarm (
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    AlarmID INT,
    AlarmDescription NVARCHAR(255),
    AlarmStart DATETIME,
    AlarmEnd DATETIME,
    TotalDuration TIME(0),
    -- hh:mm:ss (NO decimal)
    AckTime DATETIME,
    -- ACK time
    UserName NVARCHAR(100),
    -- Operator name
    Status NVARCHAR(20) -- Active / Cleared
);

--Modify Column Data Type
ALTER TABLE Alarm
ALTER COLUMN TotalDuration TIME(0);

--Select All Data from Alarm Order by ID Descending
SELECT * FROM Alarm;

--Table full details
EXEC SP_HELP 'Alarm';

--Insert Data into Alarm Table
INSERT INTO Alarm
(
    AlarmID,
    AlarmDescription,
    AlarmStart,
    AlarmEnd,
    TotalDuration,
    AckTime,
    UserName,
    Status
)
VALUES
(101, 'High Temperature', '2025-01-01 08:00:00', '2025-01-01 08:10:00', '00:10:00', '2025-01-01 08:02:00', 'Operator1', 'Cleared'),
(102, 'Low Pressure', '2025-01-01 09:00:00', '2025-01-01 09:05:00', '00:05:00', '2025-01-01 09:01:00', 'Operator2', 'Cleared'),
(103, 'Power Failure', '2025-01-01 10:15:00', '2025-01-01 10:45:00', '00:30:00', '2025-01-01 10:20:00', 'Operator1', 'Cleared'),
(104, 'Motor Overload', '2025-01-01 11:00:00', '2025-01-01 11:12:00', '00:12:00', '2025-01-01 11:03:00', 'Operator3', 'Cleared'),
(105, 'Emergency Stop', '2025-01-01 12:30:00', '2025-01-01 12:40:00', '00:10:00', '2025-01-01 12:31:00', 'Operator2', 'Cleared'),
(106, 'Sensor Failure', '2025-01-01 13:00:00', '2025-01-01 13:25:00', '00:25:00', '2025-01-01 13:05:00', 'Operator1', 'Cleared'),
(107, 'Over Voltage', '2025-01-01 14:10:00', '2025-01-01 14:20:00', '00:10:00', '2025-01-01 14:12:00', 'Operator3', 'Cleared'),
(108, 'Under Voltage', '2025-01-01 15:00:00', '2025-01-01 15:30:00', '00:30:00', '2025-01-01 15:05:00', 'Operator2', 'Cleared'),
(109, 'Communication Lost', '2025-01-01 16:00:00', '2025-01-01 16:45:00', '00:45:00', '2025-01-01 16:10:00', 'Operator1', 'Cleared'),
(110, 'Fan Failure', '2025-01-01 17:00:00', '2025-01-01 17:15:00', '00:15:00', '2025-01-01 17:02:00', 'Operator3', 'Cleared'),
(111, 'Oil Level Low', '2025-01-01 18:00:00', '2025-01-01 18:20:00', '00:20:00', '2025-01-01 18:05:00', 'Operator2', 'Cleared'),
(112, 'High Vibration', '2025-01-01 19:00:00', '2025-01-01 19:35:00', '00:35:00', '2025-01-01 19:10:00', 'Operator1', 'Cleared'),
(113, 'Door Open', '2025-01-01 20:00:00', '2025-01-01 20:05:00', '00:05:00', '2025-01-01 20:01:00', 'Operator3', 'Cleared'),
(114, 'Fire Alarm', '2025-01-01 21:00:00', '2025-01-01 21:50:00', '00:50:00', '2025-01-01 21:05:00', 'Operator2', 'Cleared'),
(115, 'System Active Alarm', '2025-01-01 22:00:00', NULL, '00:00:00', NULL, 'Operator1', 'Active');



