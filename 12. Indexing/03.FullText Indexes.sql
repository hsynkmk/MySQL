USE sql_blog;

-- Creating a FullText Index
-- 1. Create a full-text index on the title and body columns
CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

-- 2. Search using full-text index
SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react redux');

-- 3. Retrieve relevance score
SELECT post_id, MATCH(title, body) AGAINST('react redux') AS score FROM posts WHERE MATCH(title, body) AGAINST('react redux');

-- Search Operators
-- 4. Search for posts that contain 'react' or 'redux'
SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react redux' IN BOOLEAN MODE);

-- 5. Search for posts that contain 'react' but not 'redux'
SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react -redux' IN BOOLEAN MODE);

-- 6. Search for posts that contain 'react' and 'redux'
SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react +redux' IN BOOLEAN MODE);

-- 7. Search for posts that contain 'react' or 'redux' and 'javascript'
SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react redux javascript' IN BOOLEAN MODE);

-- Note: Full-text indexes enable efficient text searching and ranking based on relevance.