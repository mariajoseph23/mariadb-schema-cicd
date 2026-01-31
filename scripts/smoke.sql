USE appdb;

INSERT INTO users (email) VALUES ('ci-test@example.com');
SELECT COUNT(*) AS user_count FROM users;