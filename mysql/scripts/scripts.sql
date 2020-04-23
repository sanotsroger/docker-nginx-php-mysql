CREATE DATABASE IF NOT EXISTS app;

use app;

CREATE TABLE IF NOT EXISTS post(
    id INT(11) AUTO_INCREMENT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    FULLTEXT(title, content),
    PRIMARY KEY (id)
);

CREATE FULLTEXT INDEX INDEX_FT_CONTENT ON post (title,content);