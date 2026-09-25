USE college;
DROP TABLE IF EXISTS vehicles ;
CREATE TABLE vehicles(
    vehicle_id INT AUTO_INCREMENT NOT NULL,
    registration_number VARCHAR(20) NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE,
    vehicle_status varchar(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_vehicles_vehicle_id` PRIMARY KEY (vehicle_id),
    CONSTRAINT `uq_registration_number` UNIQUE (registration_number),
    CONSTRAINT `chk_odometer_km_non_negative` CHECK (odometer_km >= 0)
);
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('TG89H89', 'Anirudh sai', 'Royal Enfield', 'Classic 350', 'MOTORCYCLE', 'DIESEL', 2026, '2021-08-27', 'Red', 5000, '2026-12-20', 'IN_SERVICE');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, color)
VALUES ('TN20178', 'Bhagya', 'Activa', '6g series', 'Scooty', 'PETROL', 2020, 'Red');

INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES 
('AP53537', 'Prasad', 'Passanpro', '6g series', 'Bike', 'Petrol', 2010, '2010-01-10', 'Red', 1000, '2020-01-10', 'ACTIVE');
SELECT * FROM vehicles;