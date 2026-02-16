-- Validation Queries
-- Goal: classify each measurement as OK / UNDER / OVER / MISSING

SELECT
    m.measurement_id,
    m.batch_id,
    p.product_name,
    p.min_weight,
    p.max_weight,
    m.weight,
    m.measurement_time,
    CASE
        WHEN m.weight IS NULL THEN 'MISSING'
        WHEN m.weight < p.min_weight THEN 'UNDER'
        WHEN m.weight > p.max_weight THEN 'OVER'
        ELSE 'OK'
    END AS validation_status
FROM measurements m
JOIN batches b ON m.batch_id = b.batch_id
JOIN products p ON b.product_id = p.product_id
ORDER BY m.measurement_time;
