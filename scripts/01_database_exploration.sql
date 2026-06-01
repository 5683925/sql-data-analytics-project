/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

-- 1.查询数据库中所有表，了解整体数据架构
SELECT
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- 查看客户表格的字段元数据，用于后续用户分析建模
-- 重点关注列名，数据类型，是否允许为空，字符长度
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
