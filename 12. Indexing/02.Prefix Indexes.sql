USE sql_store;

-- Creating a Prefix Index
-- 1. Create an index on the first 5 characters of the last_name column
CREATE INDEX idx_lastname ON customers (last_name(5));

-- Note: Prefix indexes are useful for indexing long string columns to save space.