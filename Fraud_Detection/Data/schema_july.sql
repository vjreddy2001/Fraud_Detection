
DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant_catagory1 CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

CREATE TABLE card_holder (
  id INT NOT NULL,
  name VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE credit_card (
  card VARCHAR(20) NOT NULL, 
  -- We use VARCHAR(20) instead of BIGINT for card as these 
  -- numbers are strings and won't be mathematically aggregated
  id_card_holder INT,
  FOREIGN KEY (id_card_holder) REFERENCES card_holder (id),
  PRIMARY KEY (card)
);

CREATE TABLE merchant_category1 (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR (15)
  
);

CREATE TABLE merchant (
  id INT NOT NULL,
  name VARCHAR(50),
  id_merchant_category INT NOT NULL,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category1 (id),
  PRIMARY KEY (id)
);

CREATE TABLE transaction (
  id INT NOT NULL,
  date timestamp NOT NULL,
  amount float,
  card VARCHAR(20),
  id_merchant INT,
  FOREIGN KEY (card) REFERENCES credit_card (card),
  FOREIGN KEY (id_merchant) REFERENCES merchant (id),
  PRIMARY KEY (id)
);

