USE college;
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(20) NOT NULL UNIQUE,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12,2) NOT NULL,
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0,
    reorder_level INT UNSIGNED NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CHECK (unit_price > 0),

    CHECK (
        expiry_date IS NULL
        OR manufacture_date IS NULL
        OR expiry_date >= manufacture_date
    ),

    CHECK (
        product_status IN ('ACTIVE', 'OUT_OF_STOCK', 'DISCONTINUED')
    )
);
SHOW TABLES;
INSERT INTO products
(sku, product_name, category, brand, unit_price,
 quantity_in_stock, reorder_level, manufacture_date,
 expiry_date, product_status)
VALUES
('SKU001', 'Wireless Mouse', 'Electronics', 'Logitech', 799.00,
25, 5, '2026-01-10', '2028-01-10', 'ACTIVE'),

('SKU002', 'Laptop', 'Electronics', 'Dell', 55000.00,
20, 5, '2026-01-15', '2029-01-15', 'ACTIVE'),

('SKU003', 'Keyboard', 'Electronics', 'HP', 1200.00,
30, 5, '2026-02-10', '2029-02-10', 'ACTIVE'),

('SKU004', 'Water Bottle', 'Home', 'Milton', 500.00,
50, 10, '2026-03-05', NULL, 'ACTIVE'),

('SKU005', 'Notebook', 'Stationery', 'Classmate', 80.00,
100, 20, '2026-04-01', NULL, 'ACTIVE');
SELECT * FROM products;