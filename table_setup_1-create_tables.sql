CREATE SCHEMA IF NOT EXISTS jaffle_shop;


CREATE TABLE IF NOT EXISTS jaffle_shop.customers (id SERIAL NOT NULL PRIMARY KEY,
                                                               first_name VARCHAR(50),
                                                                          last_name VARCHAR(50));


CREATE TABLE IF NOT EXISTS jaffle_shop.orders (id SERIAL NOT NULL PRIMARY KEY,
                                                            user_id SMALLINT, order_date DATE, status VARCHAR(50));


CREATE SCHEMA IF NOT EXISTS stripe;


CREATE TABLE IF NOT EXISTS stripe.payments (id SERIAL NOT NULL PRIMARY KEY, orderid smallint, paymentmethod VARCHAR(50),
                                                                                               status VARCHAR(50),
                                                                                                      ammount smallint, created DATE);