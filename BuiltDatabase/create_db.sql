--Create a db if not EXISTS
CREATE DATABASE IF NOT EXISTS country_db;

--select the newly created DATABASE
USE country_db;


--create different TABLES
--1.create the currencies TABLE
DROP TABLE IF EXISTS currencies;
CREATE TABLE currencies(
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(100) NOT NULL,
    currency_code VARCHAR(3)
);