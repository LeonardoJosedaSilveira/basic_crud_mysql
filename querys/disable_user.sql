USE `library`;

UPDATE `users`

SET	
    `enable` = false

WHERE `email` = 'jao@jao.com';
