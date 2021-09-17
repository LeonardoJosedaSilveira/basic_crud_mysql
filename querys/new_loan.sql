USE `library`;

INSERT INTO `loan`(user_id, book_id, date_loan, date_back)

VALUE (
    6,
    6,
    now(),
    now() + interval 7 day
);
    
