USE `library`;

SELECT 
	`user_name`,
    `book_name`,
    `date_loan`,
	`date_back`
    
FROM
	`users`

INNER JOIN 
	`loan` USING(`user_id`)
INNER JOIN
	`books` USING(`book_id`)
    
WHERE
	`user_id` = '1'
    
ORDER BY
	`date_loan`;

