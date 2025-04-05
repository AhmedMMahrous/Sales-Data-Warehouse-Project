/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Sales_Data_Warehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'Sales_Data_Warehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Sales_Data_Warehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Sales_Data_Warehouse')
BEGIN
    ALTER DATABASE Sales_Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Sales_Data_Warehouse;
END;
GO

-- Create the 'Sales_Data_Warehouse' database
CREATE DATABASE Sales_Data_Warehouse;
GO

USE Sales_Data_Warehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
