-- liquibase formatted sql

-- changeset abimbola:1
CREATE TABLE shop.customer
(
    id INT,
    name TEXT,
    PRIMARY KEY (id)
);
