DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    latitude DECIMAL(8, 4),
    longitude DECIMAL(8, 4),
    capital VARCHAR(5),
    population INT,
    inserted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- create the foreign key
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

