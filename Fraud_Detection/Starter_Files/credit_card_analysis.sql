
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS merchant_catagory;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS transaction;

CREATE TABLE card_holder (
	
	Id int primary key,
	name varchar(50)
	)
;

CREATE TABLE credit_card (
	carddholder_id bigint primary key,
	card varchar(20)
	)
;

CREATE TABLE merchant_catagory(
	
	Id int primary key,
	name varchar(50)
	)
;

CREATE TABLE merchant (
	Id int primary key,
	name varchar(50),
	merchant_id_catagory varchar(20)
	)
;

CREATE TABLE transaction (
	
	Id int,
	date TIMESTAMP,
	amount float,
	card varchar(20),
	id_merchant int 
	)
;
SELECT * FROM card_holder;
