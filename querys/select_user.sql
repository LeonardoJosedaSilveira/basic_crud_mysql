USE `library`;

SELECT 
	`user_id`,
    `user_name`,
	`email`,
    `enable`
    
FROM `users`

WHERE email = 'jao@jao.com';
