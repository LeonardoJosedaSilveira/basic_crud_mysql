USE `library`;

UPDATE `loan`

SET
	`date_back` = `date_back` + INTERVAL 3 DAY

WHERE
	`user_id` = 6 AND
    `book_id` = 6;