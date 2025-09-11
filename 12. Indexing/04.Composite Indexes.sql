USE sql_store;

-- Creating a Composite Index
-- 1. Create an index on the state and points columns
CREATE INDEX idx_state_points ON customers (state, points);

-- 2. Query using composite index
SELECT customer_id FROM customers WHERE state = 'CA' AND points > 1000;

-- 3. Explain the query to see the index usage
EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA' AND points > 1000;

-- Note: Composite indexes improve performance for queries involving multiple columns.
-- The query optimizer uses the composite index to filter rows based on the state and points columns.


-- 4. Order of Columns in Composite Index
-- Most selective column should be first in the composite index.
-- High cardinality columns should be first in the composite index.
CREATE INDEX idx_points_state ON customers (state, points);

-- 5. Query using composite index with different column order
SELECT customer_id FROM customers WHERE state = 'CA' AND points > 1000;

-- Note: The order of columns in a composite index affects query performance.








-- SQL Indexes in MySQL: A Comprehensive Guide

-- ----------------------------------------------------------------------
-- 1. Introduction to Indexes
-- ----------------------------------------------------------------------
-- Indexes are database structures that improve the speed of data retrieval operations.
-- They work like a book's index, allowing the database to find data without scanning the entire table.
-- Indexes are critical for optimizing query performance but come with trade-offs (e.g., storage, write speed).

-- Key Concepts:
-- - Indexes are stored as B-trees (default) or hash tables in MySQL.
-- - Indexes can be created on one or more columns.
-- - Indexes are automatically created for PRIMARY KEY and UNIQUE constraints.

-- ----------------------------------------------------------------------
-- 2. Types of Indexes in MySQL
-- ----------------------------------------------------------------------
-- MySQL supports several index types:

-- 2.1 PRIMARY KEY Index
-- - Uniquely identifies each row in a table.
-- - Automatically creates a clustered index (data is physically ordered by the PK).
-- - Only one PRIMARY KEY per table.

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Creates a PRIMARY KEY index
    name VARCHAR(50),
    department VARCHAR(50)
);

-- 2.2 UNIQUE Index
-- - Ensures all values in the column are distinct.
-- - Can include NULL values (but only one NULL if column is UNIQUE).

CREATE UNIQUE INDEX idx_unique_email 
ON employees(email);  -- Prevents duplicate emails

-- 2.3 INDEX (Non-Unique)
-- - Basic index to speed up queries without enforcing uniqueness.

CREATE INDEX idx_department 
ON employees(department);  -- Speeds up searches by department

-- 2.4 FULLTEXT Index
-- - Designed for full-text searches on text columns (e.g., VARCHAR, TEXT).
-- - Used with MATCH() and AGAINST() functions.

CREATE FULLTEXT INDEX idx_fulltext_notes 
ON employee_notes(notes);  -- Enables text-based searches

-- 2.5 SPATIAL Index
-- - For spatial data types (e.g., GEOMETRY, POINT).
-- - Requires MyISAM storage engine (or InnoDB in MySQL 5.7+).

CREATE SPATIAL INDEX idx_spatial_location 
ON locations(coordinates);

-- ----------------------------------------------------------------------
-- 3. Creating Indexes
-- ----------------------------------------------------------------------
-- Syntax:
-- CREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name 
-- ON table_name (column1, column2, ...);

-- Example: Composite Index (multiple columns)
CREATE INDEX idx_name_department 
ON employees(name, department);  -- Optimizes queries filtering both name and department

-- Example: Prefix Index (index first N characters of a string)
CREATE INDEX idx_name_prefix 
ON employees(name(10));  -- Indexes first 10 characters of 'name'

-- ----------------------------------------------------------------------
-- 4. When to Use Indexes
-- ----------------------------------------------------------------------
-- Use indexes on columns that:
-- - Are frequently used in WHERE clauses.
-- - Are used in JOIN conditions.
-- - Are used in ORDER BY or GROUP BY clauses.
-- - Have high selectivity (many unique values).

-- Avoid over-indexing:
-- - Indexes consume disk space.
-- - Inserts/updates/deletes become slower due to index maintenance.

-- ----------------------------------------------------------------------
-- 5. View Existing Indexes
-- ----------------------------------------------------------------------
-- Show all indexes for a table:
SHOW INDEXES FROM employees;

-- Output includes:
-- - Index_name (e.g., PRIMARY, idx_department)
-- - Column_name
-- - Index_type (e.g., BTREE, HASH)
-- - Cardinality (estimated uniqueness of values)

-- ----------------------------------------------------------------------
-- 6. Dropping Indexes
-- ----------------------------------------------------------------------
-- Syntax:
-- DROP INDEX index_name ON table_name;

DROP INDEX idx_department ON employees;

-- To drop a PRIMARY KEY:
ALTER TABLE employees 
DROP PRIMARY KEY;  -- Requires removing AUTO_INCREMENT first if present

-- ----------------------------------------------------------------------
-- 7. Performance Considerations
-- ----------------------------------------------------------------------
-- - Clustered Index (PRIMARY KEY): Affects physical data order. Choose carefully.
-- - Covering Index: An index that includes all columns needed for a query.
-- - Index Merge: MySQL may use multiple indexes for a single query.

-- Use EXPLAIN to analyze query execution plans:
EXPLAIN SELECT * FROM employees WHERE department = 'Sales';

-- Output shows:
-- - Possible_keys: Which indexes MySQL considered.
-- - Key: The index actually used.
-- - Rows: Number of rows scanned.

-- ----------------------------------------------------------------------
-- 8. Common Mistakes
-- ----------------------------------------------------------------------
-- 8.1 Over-Indexing
-- - Adding indexes to every column slows down writes unnecessarily.

-- 8.2 Ignoring Composite Indexes
-- Bad Practice:
CREATE INDEX idx_name ON employees(name);
CREATE INDEX idx_department ON employees(department);

-- Better Practice (for queries filtering both columns):
CREATE INDEX idx_name_department ON employees(name, department);

-- 8.3 Not Considering Data Distribution
-- - Indexing a column with 95% NULLs may not improve performance.

-- ----------------------------------------------------------------------
-- 9. Best Practices
-- ----------------------------------------------------------------------
-- 1. Start with indexes on PRIMARY KEY and FOREIGN KEY columns.
-- 2. Use EXPLAIN to identify slow queries.
-- 3. Monitor index usage:
SELECT * FROM sys.schema_index_statistics 
WHERE table_name = 'employees';

-- 4. Rebuild fragmented indexes periodically:
OPTIMIZE TABLE employees;

-- 5. Name indexes meaningfully (e.g., idx_[table]_[column]).

-- ----------------------------------------------------------------------
-- 10. Conclusion
-- ----------------------------------------------------------------------
-- Indexes are powerful tools for optimizing read performance in MySQL.
-- Always balance the benefits of faster queries against the cost of index maintenance.
-- Test indexes thoroughly with real-world data and workloads.