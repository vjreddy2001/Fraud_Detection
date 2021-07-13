
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS merchant_catagory;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS transaction;

CREATE TABLE card_holder (
	
	Id int NOT NULL primary key,
	name varchar(50)
	)
;

CREATE TABLE credit_card (
	card varchar(20) NOT NULL primary key,
	card_holder_id INT,
	FOREIGN KEY (card_holder_id) REFERENCES card_holder (id)
	)
;

CREATE TABLE merchant_category(
	
	Id int NOT NULL primary key,
	name varchar(50)
	)
;

CREATE TABLE merchant (
	Id int NOT NULL primary key,
	name varchar(50),
	merchant_id_category INT NOT NULL,
	FOREIGN KEY (merchant_id_category) REFERENCES merchant_category (id)
	)
;

CREATE TABLE transaction (
	
	Id int NOT NULL PRIMARY KEY,
	date TIMESTAMP NOT NULL,
	amount float,
	card varchar(20),
	id_merchant int,
	FOREIGN KEY (card) REFERENCES credit_card (card),
	FOREIGN KEY (id_merchant) REFERENCES merchant (id)
	)
;