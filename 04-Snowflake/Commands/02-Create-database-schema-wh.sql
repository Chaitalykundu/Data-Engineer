-- Administration database
-- ADMIN_DB holds administration and monitoring objects.
CREATE DATABASE IF NOT EXISTS ADMIN_DB;
CREATE SCHEMA if not exists  ADMIN_DB.MONITORING;

-- Raw data database
-- RAW_DB stores source-aligned data.
CREATE DATABASE if not exists RAW_DB;
CREATE SCHEMA if not exists RAW_DB.HR;


-- Analytics database
-- ANALYTICS_DB stores data prepared for reporting.
CREATE DATABASE if not exists ANALYTICS_DB;
CREATE SCHEMA if not exists ANALYTICS_DB.HR;


-- Validate the structure
SHOW DATABASES;

SHOW SCHEMAS IN DATABASE ADMIN_DB;
SHOW SCHEMAS IN DATABASE RAW_DB;
SHOW SCHEMAS IN DATABASE ANALYTICS_DB;

-- Use and Check the current database and schema
USE DATABASE RAW_DB;
USE SCHEMA HR;

SELECT CURRENT_DATABASE(), CURRENT_SCHEMA();


-- X-Small warehouse for your lab
CREATE WAREHOUSE IF NOT EXISTS ADMIN_WH
WAREHOUSE_SIZE = 'XSMALL'
AUTO_RESUME = TRUE
AUTO_SUSPEND = 60;

-- Use and check the current warehouse
USE WAREHOUSE ADMIN_WH;
SELECT CURRENT_WAREHOUSE();