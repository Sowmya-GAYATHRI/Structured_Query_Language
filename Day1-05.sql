
CREATE TABLE patients (
    patient_id INT NOT NULL AUTO_INCREMENT,
    patient_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex ENUM('FEMALE', 'MALE', 'INTERSEX', 'NOT_DISCLOSED') NOT NULL,
    blood_group ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_patients_patient_id PRIMARY KEY (patient_id),
    CONSTRAINT uq_patient_number UNIQUE (patient_number)
);
INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('Pat1001', 'Alekhya', 'Ravuri', '1990-07-07', 'female', 'O+', '9848022331', 'Srivasulu', '76543234567');

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('Pat1002', 'Sowmya', 'Gayathri', '2004-07-07', 'Female', 'B+', '9876543213', 'Prasad', '987654357');

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('Pat1003', 'Anirudh', 'sai', '2000-08-10', 'MALE', 'A+', '98765433456', 'Bhagya', '987654357');

SELECT * FROM patients;







