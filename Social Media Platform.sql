create database IF NOT EXISTS socialmedia;
use socialmedia;
Create table IF NOT EXISTS users(
user_id INT PRIMARY KEY auto_increment,
username varchar(50),
email VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS posts(
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    caption TEXT,
    posted_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE if not exists followers (
    follower_id INT,
    following_id INT,
    follow_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (follower_id) REFERENCES users(user_id),
    FOREIGN KEY (following_id) REFERENCES users(user_id)
);

INSERT INTO users (username, email) VALUES
('arun','arun@gmail.com'),
('ajay','ajay@yahoo.com'),
('bala','bala@hotmail.com'),
('david','david@gmail.com'),
('kumar','kumar@yahoo.com');


INSERT INTO posts (user_id, caption) VALUES
(1,'My first post'),
(2,'Learning SQL'),
(3,NULL),
(4,'Hello world'),
(5,'Data analyst journey');
-- Filter users (Users name starts with a)
SELECT * FROM users
WHERE username LIKE 'a%';
-- Posts between dates
SELECT * FROM posts
WHERE posted_at BETWEEN '2024-01-01' AND '2024-12-31';
-- null captions
SELECT * FROM posts
WHERE caption IS NULL;
-- In clause email domains
SELECT*FROM users
WHERE email LIKE '%@gmail.com'
OR email LIKE '%@hotmail.com'
OR email LIKE '%@yahoo.com';

