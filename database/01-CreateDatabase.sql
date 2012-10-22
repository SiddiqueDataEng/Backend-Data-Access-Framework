/*
 * Backend Data Access Framework
 * Project #104 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: C#, ADO.NET
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataAccessLayer')
BEGIN
    ALTER DATABASE DataAccessLayer SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataAccessLayer;
END
GO

CREATE DATABASE DataAccessLayer
ON PRIMARY
(
    NAME = 'DataAccessLayer_Data',
    FILENAME = 'C:\SQLData\DataAccessLayer_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'DataAccessLayer_Log',
    FILENAME = 'C:\SQLData\DataAccessLayer_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE DataAccessLayer SET RECOVERY SIMPLE;
ALTER DATABASE DataAccessLayer SET AUTO_UPDATE_STATISTICS ON;
GO

USE DataAccessLayer;
GO

PRINT 'Database DataAccessLayer created successfully';
PRINT 'Project: Backend Data Access Framework';
PRINT 'Description: Database access layer standardization';
GO
