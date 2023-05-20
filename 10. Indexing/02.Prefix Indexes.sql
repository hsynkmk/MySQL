USE sql_store;

CREATE INDEX idx_lastname ON customers (last_name(20));