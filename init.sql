\connect airbuydb

CREATE TABLE global_property_sqm_purchase_prices
(
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    avg_sqm_price INTEGER NOT NULL,
    data_source_url VARCHAR(255) NOT NULL,
    data_source_date DATE NOT NULL,
    PRIMARY KEY (city, country)
);

CREATE TABLE airbnb_rental_prices
(
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    num_bedrooms INTEGER NOT NULL,
    entry_count INTEGER NOT NULL,
    avg_price_per_night INTEGER NOT NULL,
    data_source_url VARCHAR(255) NOT NULL,
    data_source_date DATE NOT NULL,
    PRIMARY KEY (city, country, num_bedrooms)
);

CREATE TABLE bedroom_to_area_estimations
(
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    num_bedrooms INTEGER NOT NULL,
    avg_area_sqm INTEGER NOT NULL,
    PRIMARY KEY (city, country, num_bedrooms)
);
