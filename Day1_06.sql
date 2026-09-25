USE college;

DROP TABLE IF EXISTS patients;

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
INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('202600000001', 'Ajay', 'SAVINGS', 5000.50, 'Kukkatpally', '2026-01-15', 3.50);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES ('202600000002', 'Bala Chota', 'CURRENT', 1200.00, 'KPHB', '2026-03-22', 500.00);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('202600000003', 'Charan Gupta', 'FIXED_DEPOSIT', 50000.00, 'Erragadda', '2026-06-01', 7.25);

SELECT * FROM bank_accounts;