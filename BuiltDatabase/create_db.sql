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

--2.create countries TABLE
DROP TABLE IF EXISTS countries;
CREATE TABLE countries(
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    country_code VARCHAR(50),
    region VARCHAR(50),
    sub_region VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    --create our foregin KEY
    currency_id INT,
    FOREIGN KEY (currency_id) REFERENCES currencies(currency_id)
);

--3.create cities TABLE
DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    latitude DECIMAL(8,4),
    longitude DECIMAL(8,4),
    capital VARCHAR(50),
    population INT,
    inserted TIMESTAMP DEFAULT CURRENT TIMESTAMP,

    --create the foreign KEY
    country_id INT,
    FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

