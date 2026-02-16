-- Defect rate per product
SELECT 
    p.product_name,
    COUNT(*) AS total_measurements,
    SUM(CASE 
        WHEN m.weight < p.min_weight OR m.weight > p.max_weight THEN 1 
        ELSE 0 
    END) AS defect_count,
    ROUND(
        100.0 * SUM(CASE 
            WHEN m.weight < p.min_weight OR m.weight > p.max_weight THEN 1 
            ELSE 0 
        END) / COUNT(*), 
    2) AS defect_percentage
FROM measurements m
JOIN batches b ON m.batch_id = b.batch_id
JOIN products p ON b.product_id = p.product_id
GROUP BY p.product_name;
