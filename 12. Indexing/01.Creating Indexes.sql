USE sql_store;

-- Creating Indexes
-- 1. Analyze query performance before indexing
EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

-- 2. Create an index on the state column
CREATE INDEX idx_state ON customers (state);

-- 3. Analyze query performance after indexing
EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

-- Note: Indexes improve query performance by allowing faster data retrieval.
