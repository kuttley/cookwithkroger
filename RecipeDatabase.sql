DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS recipe;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS recipe_category;
DROP TABLE IF EXISTS recipe_product;
DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS product_store;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS products_bought_recently;

BEGIN TRANSACTION;

CREATE TABLE product
(
    upc SERIAL,
    product_description VARCHAR(128) NOT NULL,
    commodity VARCHAR(64) NOT NULL,
    brand VARCHAR(64) NOT NULL,
    product_size INT NOT NULL,

    CONSTRAINT pk_product PRIMARY KEY (upc)
);

CREATE TABLE recipe
(
    recipe_ID SERIAL,
    name VARCHAR(64) NOT NULL,
    recipe_instructions VARCHAR(128) NOT NULL,
    recipe_description VARCHAR(128) NOT NULL,
    time_to_cook int NOT NULL,

    CONSTRAINT pk_recipe PRIMARY KEY (recipe_ID)
);

CREATE TABLE category
(
    category_ID SERIAL,
    name VARCHAR(64),

    CONSTRAINT pk_category PRIMARY KEY (category_ID)
);

CREATE TABLE recipe_category
(
    category_ID INT NOT NULL,
    recipe_ID INT NOT NULL,

    CONSTRAINT pk_recipe_category PRIMARY KEY (category_ID, recipe_ID),
    CONSTRAINT fk_category FOREIGN KEY (category_ID) REFERENCES category (category_ID),
    CONSTRAINT fk_recipe FOREIGN KEY (recipe_ID) REFERENCES recipe (recipe_ID)
);

CREATE TABLE recipe_product
(
    recipe_ID INT NOT NULL,
    upc INT NOT NULL,
    quantity INT NOT NULL,

    CONSTRAINT pk_recipe_product PRIMARY KEY (recipe_ID, upc),
    CONSTRAINT fk_product FOREIGN KEY (upc) REFERENCES product (upc),
    CONSTRAINT fk_recipe FOREIGN KEY (recipe_ID) REFERENCES recipe (recipe_ID)
);

CREATE TABLE store
(
    store_ID SERIAL,
    store_zip VARCHAR(24) NOT NULL,

    CONSTRAINT pk_store PRIMARY KEY (store_ID)
);

CREATE TABLE product_store
(
    upc SERIAL,
    store_ID INT NOT NULL,
    product_price FLOAT NOT NULL,

    CONSTRAINT pk_product_store PRIMARY KEY (upc),
    CONSTRAINT fk_product FOREIGN KEY (upc) REFERENCES product (upc),
    CONSTRAINT fk_store FOREIGN KEY (store_ID) REFERENCES store (store_ID)
);

CREATE TABLE customer
(
    customerId SERIAL,
    userName VARCHAR(64) NOT NULL,
    firstName VARCHAR(64) NOT NULL,
    lastName VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,

    CONSTRAINT pk_customer PRIMARY KEY (customerId)
);

CREATE TABLE products_bought_recently
(
    customerId INT NOT NULL,
    upc INT,

    CONSTRAINT pk_products_bought_recently PRIMARY KEY (customerId),
    CONSTRAINT fk_customer FOREIGN KEY (customerId) REFERENCES customer (customerId),
    CONSTRAINT fk_product FOREIGN KEY (upc) REFERENCES product (upc)
);

COMMIT TRANSACTION;
