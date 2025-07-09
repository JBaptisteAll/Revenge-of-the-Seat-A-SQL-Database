-- Creating a DB
CREATE DATABASE flights


-- Creating Tables
CREATE TABLE aircraft (
  aircraft_id VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50),
  aircraft_type VARCHAR(50),
  year_built INTEGER,
  engine_type VARCHAR(50),
  mass INTEGER,
  length_meters INTEGER,
  cost DECIMAL(15,2),
  capacity INTEGER,
  fuel_capacity_liters INTEGER,
  burn_rate_liters_per_minute DECIMAL(6,2),
  aircraft_status VARCHAR(50)
);
CREATE TABLE airlines (
  airline_code VARCHAR(10) NOT NULL,
  airline_name VARCHAR(50),
  headquarters VARCHAR(50),
  date_founded DATE,
  market_cap BIGINT,
  employees INTEGER
); 
CREATE TABLE airports (
  airport_code VARCHAR(5) NOT NULL,
  airport_name VARCHAR(50),
  city VARCHAR(50),
  country VARCHAR(50),
  airport_employees INTEGER,
  airport_size_m2 INTEGER
); 
CREATE TABLE passenger (
  passenger_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birthdate DATE,
  nationality VARCHAR(50),
  gender VARCHAR(10),
  passenger_status VARCHAR(20)
);
CREATE TABLE passenger_flights (
  pf_id INT IDENTITY(1,1) NOT NULL,
  passenger_id INT,
  flight_id VARCHAR(50),
  booking_date DATE,
  seat_number VARCHAR(5),
  ticket_class VARCHAR(50),
  ticket_price DECIMAL(10,2),
  check_in_status VARCHAR(50)
);
CREATE TABLE flights (
  flight_id VARCHAR(50) NOT NULL,
  departure_time DATETIME,
  arrival_time DATETIME,
  delay_minutes INTEGER,
  departure_airport_code VARCHAR(5),
  destination_airport_code VARCHAR(5),
  flight_status VARCHAR(10),
  passenger_count INTEGER,
  revenue DECIMAL(15,2),
  asm_domestic DECIMAL(15,2),
  asm_international DECIMAL(15,2),
  flights_domestic DECIMAL(15,2),
  flights_international DECIMAL(15,2),
  passengers_domestic DECIMAL(15,2),
  passengers_international DECIMAL(15,2),
  rpm_domestic DECIMAL(15,2),
  rpm_international DECIMAL(15,2),
  airline_code VARCHAR(10),
  aircraft_id VARCHAR(50)
);
