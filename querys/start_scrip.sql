CREATE SCHEMA IF NOT EXISTS `library`;

CREATE TABLE IF NOT EXISTS `library`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `enable` BOOLEAN,
  PRIMARY KEY (`user_id`));

CREATE TABLE IF NOT EXISTS `library`.`books` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `book_name` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `enable` BOOLEAN,
  PRIMARY KEY (`book_id`));

CREATE TABLE IF NOT EXISTS `library`.`loan` (
  `user_id` INT NULL,
  `book_id` INT NULL,
  `date_loan` DATETIME NULL,
  `data_back` DATETIME NULL,
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  INDEX `book_id_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `library`.`users` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `book_id`
    FOREIGN KEY (`book_id`)
    REFERENCES `library`.`books` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO library.users(user_name, email, enable)
VALUES
  ('leo','leo@leo.com', true),
  ('pedro','pedro@pedro.com', true),
  ('wil','wil@wil.com', true),
  ('vraw','vraw@vraw.com', true),
  ('unreal','unreal@unreal.com', true);

INSERT INTO library.books(book_name, autor, enable)
VALUES
  ('Karate-Do: My Way of Life','Gichin Funakoshi', true),
  ('Mitos do Shotokan','Kousaku Yokota', true),
  ('Harry Potter e A Pedra Filosofal','J.K. Rowling', true),
  ('Frankenstein','Mary Shelley', true),
  ('Dr Jekyll and MR Hyde ','Robert Louis Stevenson', true);

INSERT INTO library.loan(user_id, book_id, date_loan, data_back)
VALUES
  (1, 2, now(), now() + interval 7 day),
  (1, 1, now(), now() + interval 7 day),
  (2, 3, now(), now() + interval 7 day),
  (3, 4, now(), now() + interval 7 day),
  (4, 5, now(), now() + interval 7 day);
