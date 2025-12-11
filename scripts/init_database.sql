/*
===================================================
-- Create Database and Schema --
===================================================

Script Purpose:
    This scripts creates a new database named "DataWarehouse"
    after checking if already exists. If the database exists, it 
    is DROPPED and RE-CREATED. Additionally, this scripts also 
    creates three schemas: Bronze, Silver and Gold.
*/

USE master;
GO
/*
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
*/

-- Create database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
USE DataWarehouse;
GO

-- Create schema
CREATE SCHEMA bronze;
GO 

CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO
