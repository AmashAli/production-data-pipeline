-- Insert Products
INSERT INTO products (product_name, min_weight, max_weight)
VALUES
('Tomatoes 500g', 480.00, 520.00),
('Cucumbers 300g', 280.00, 320.00);

-- Insert Batches
INSERT INTO batches (product_id, start_time, end_time)
VALUES
(1, '2026-02-15 08:00:00', '2026-02-15 10:00:00'),
(2, '2026-02-15 11:00:00', '2026-02-15 13:00:00');

-- Insert Measurements (some valid, some invalid)
INSERT INTO measurements (batch_id, weight, measurement_time)
VALUES
-- Batch 1 (Tomatoes)
(1, 500.00, '2026-02-15 08:05:00'),  -- valid
(1, 470.00, '2026-02-15 08:10:00'),  -- underweight
(1, 530.00, '2026-02-15 08:15:00'),  -- overweight
(1, NULL,   '2026-02-15 08:20:00'),  -- missing value

-- Batch 2 (Cucumbers)
(2, 300.00, '2026-02-15 11:05:00'),  -- valid
(2, 275.00, '2026-02-15 11:10:00'),  -- underweight
(2, 330.00, '2026-02-15 11:15:00'),  -- overweight
(2, 290.00, '2026-02-15 11:20:00');  -- valid
