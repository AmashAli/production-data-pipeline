-- Production Data Pipeline Schema

-- 1️⃣ Products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    min_weight DECIMAL(10,2) NOT NULL,
    max_weight DECIMAL(10,2) NOT NULL
);

-- 2️⃣ Batches table
CREATE TABLE batches (
    batch_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 3️⃣ Measurements table
CREATE TABLE measurements (
    measurement_id SERIAL PRIMARY KEY,
    batch_id INT NOT NULL,
    weight DECIMAL(10,2),
    measurement_time TIMESTAMP NOT NULL,
    FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

Add initial database schema
