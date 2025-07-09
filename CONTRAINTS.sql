-- Contraintes PRIMARY KEY
ALTER TABLE aircraft ADD CONSTRAINT PK_aircraft PRIMARY KEY (aircraft_id);
ALTER TABLE airlines ADD CONSTRAINT PK_airlines PRIMARY KEY (airline_code);
ALTER TABLE airports ADD CONSTRAINT PK_airports PRIMARY KEY (airport_code);
ALTER TABLE passenger ADD CONSTRAINT PK_passenger PRIMARY KEY (passenger_id);
ALTER TABLE passenger_flights ADD CONSTRAINT PK_passenger_flights PRIMARY KEY (pf_id);
ALTER TABLE flights ADD CONSTRAINT PK_flights PRIMARY KEY (flight_id);


-- Contraintes FOREIGN KEY
ALTER TABLE flights
ADD CONSTRAINT FK_flight_aircraft FOREIGN KEY (aircraft_id) REFERENCES aircraft(aircraft_id);
ALTER TABLE flights
ADD CONSTRAINT FK_flight_airlines FOREIGN KEY (airline_code) REFERENCES airlines(airline_code);
ALTER TABLE flights
ADD CONSTRAINT FK_flight_departure FOREIGN KEY (departure_airport_code) REFERENCES airports(airport_code);
ALTER TABLE flights
ADD CONSTRAINT FK_flight_destination FOREIGN KEY (destination_airport_code) REFERENCES airports(airport_code);

ALTER TABLE passenger_flights
ADD CONSTRAINT FK_pf_passenger FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id);
ALTER TABLE passenger_flights
ADD CONSTRAINT FK_pf_flights FOREIGN KEY (flight_id) REFERENCES flights(flight_id);

-- Contraintes 
ALTER TABLE aircraft
ADD CONSTRAINT chk_aircraft_status CHECK (aircraft_status IN ('Active', 'Maintenance', 'Retired'));

ALTER TABLE passenger_flights
ADD CONSTRAINT chk_ticket_class CHECK (ticket_class IN ('Economy', 'Business', 'First'));
ALTER TABLE passenger_flights
ADD CONSTRAINT chk_checkin_status CHECK (check_in_status IN ('Checked In', 'No Show', 'Cancelled'));

ALTER TABLE flights
ADD CONSTRAINT chk_flight_status CHECK (flight_status IN ('On Time', 'Delayed', 'Cancelled'));

ALTER TABLE passenger
ADD CONSTRAINT chk_gender CHECK (gender IN ('Male', 'Female', 'Other'));
ALTER TABLE passenger
ADD CONSTRAINT chk_passenger_status CHECK (passenger_status IN ('First Timer', 'Regular', 'Frequent Flyer'));

