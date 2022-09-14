CREATE DATABASE test1;
USE test1;

DROP DATABASE IF EXISTS test1;
CREATE TABLE  customers(
customer_id    INT,
first_name     VARCHAR(10),
last_name      VARCHAR(10),
email_address  VARCHAR(30),
number_of_complaints    INT
);
-- DROP TABLE customers;
CREATE TABLE  sales(
purchase_number  INT,
date_of_purchase DATE,
customer_id      INT,
item_code        VARCHAR(10)
);
-- DROP TABLE sales;
CREATE TABLE  items(
item_code  VARCHAR(10),
item       VARCHAR(10),
unit_price_usd     INT,
company_id         INT,
company    VARCHAR(10),
headquarters_phone_number  VARCHAR(10)
)
-- DROP TABLE items;
