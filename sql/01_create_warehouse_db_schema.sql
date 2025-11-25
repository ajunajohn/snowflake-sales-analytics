-- ============================================================
-- 01. Create Warehouse, Database, and Schema
-- ============================================================

ANALYTICS_DB.SALES_SCHEMA.DIM_CUSTOMERANALYTICS_DB.SALES_SCHEMA.DIM_CUSTOMERANALYTICS_DB.SALES_SCHEMA
-- 1. Warehouse
CREATE OR REPLACE WAREHOUSE ba_da_wh
  WITH WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND = 300
  AUTO_RESUME = TRUE;

-- 2. Database & Schema
CREATE OR REPLACE DATABASE analytics_db;
CREATE OR REPLACE SCHEMA analytics_db.sales_schema;

USE DATABASE analytics_db;
USE SCHEMA sales_schema;
USE WAREHOUSE ba_da_wh;