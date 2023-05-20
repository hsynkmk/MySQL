USE sql_store;

EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

CREATE INDEX idx_state ON customers (state);

EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';
