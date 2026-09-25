USE college;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_code VARCHAR(12) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80) NOT NULL,
    postal_code VARCHAR(12) NOT NULL,
    customer_type VARCHAR(15) NOT NULL DEFAULT 'Regular',
    credit_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (customer_id),
    UNIQUE (customer_code),
    UNIQUE (email),
    UNIQUE (phone)
);
INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code)
VALUES
('ID101', 'Sowmya', 'Gayathri', 'sg123gmail.com', '98765432', '2003-07-07', 'Hyderabad', 'Telangana', '500001');

INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code)
VALUES
('ID102', 'Alekhya', 'Ravuri', 'ar123gmail.com', '7654321937', '2005-05-09', 'Vijayawada', 'Andhra Pradesh', '520001');

INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code)
VALUES
('ID103', 'Anirudh', 'Sai', 'as0909gmail.com', '7654345656', '2004-10-08', 'Chennai', 'Tamil Nadu', '600001');
SELECT * FROM customers;





