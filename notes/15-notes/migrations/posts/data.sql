-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS posts;

CREATE TABLE IF NOT EXISTS posts (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*
INSERT INTO posts (title) VALUES
('My First Blog Post'),
('My Second Blog Post');
*/

CREATE TABLE IF NOT EXISTS `users` (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
   `username` VARCHAR(100) NOT NULL,
   `admin` TINYINT(2) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*
INSERT INTO users (username, admin) VALUES
('JeffreyWay', 1),
('JohnDoe', 0),
('JaneDoe', 1);
 */