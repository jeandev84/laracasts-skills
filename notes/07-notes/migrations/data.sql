-- https://metanit.com/sql/mysql/2.5.php
-- DROP TABLE IF EXISTS `users`;
-- DROP TABLE IF EXISTS `notes`;

CREATE TABLE IF NOT EXISTS `users` (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


INSERT INTO users (name, email) VALUES
('John', 'john@example.com'),
('Kate', 'kate@example.com');

CREATE TABLE IF NOT EXISTS `notes` (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
   `body` TEXT NOT NULL,
   `user_id` INT(11) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES users (`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


INSERT INTO notes (body, user_id) VALUES
('Ideas for next vacation', 1),
('Next art project researching', 2),
('Work reminders', 1),
('Design techniques blog post', 2),
('Thoughts on my continued learning of PHP', 1);


