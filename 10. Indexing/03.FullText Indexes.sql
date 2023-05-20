USE sql_blog;

CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

SELECT * FROM posts WHERE MATCH(title, body) AGAINST('react redux');

-- Score
SELECT post_id, MATCH(title, body) AGAINST('react redux') FROM posts WHERE MATCH(title, body) AGAINST('react redux');