-- PostgreSQL Schema for Traffic Violations Data Model
-- Based on ERD diagram and CSV files

-- Create tables

CREATE TABLE drivers (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    ssn_number VARCHAR(11)
);

CREATE TABLE cars (
    id INTEGER PRIMARY KEY,
    vin_number VARCHAR(17),
    model VARCHAR(255),
    production_year INTEGER
);

CREATE TABLE violation_details (
    id INTEGER PRIMARY KEY,
    description TEXT,
    penalty_points INTEGER,
    fine_amount NUMERIC(10, 2)
);

CREATE TABLE locations (
    id INTEGER PRIMARY KEY,
    city VARCHAR(100),
    state CHAR(2)
);

CREATE TABLE traffic_violations (
    id INTEGER PRIMARY KEY,
    date DATE,
    driver_id INTEGER REFERENCES drivers(id),
    car_id INTEGER REFERENCES cars(id),
    location_id INTEGER REFERENCES locations(id),
    violation_id INTEGER REFERENCES violation_details(id)
);

-- Commands to load data from CSV files
-- Replace '/path/to/' with the actual absolute path to the CSV files if running manually in psql
-- if you have permission issues try \copy instead of COPY in psql

/*
COPY drivers(id, first_name, last_name, ssn_number)
FROM '/path/to/drivers.csv'
DELIMITER ','
CSV HEADER;

COPY cars(id, vin_number, model, production_year)
FROM '/path/to/cars.csv'
DELIMITER ','
CSV HEADER;

COPY violation_details(id, description, penalty_points, fine_amount)
FROM '/path/to/violation_details.csv'
DELIMITER ','
CSV HEADER;

COPY locations(id, city, state)
FROM '/path/to/locations.csv'
DELIMITER ','
CSV HEADER;

COPY traffic_violations(id, date, driver_id, violation_id, location_id, car_id)
FROM '/path/to/traffic_violations.csv'
DELIMITER ','
CSV HEADER;
*/
