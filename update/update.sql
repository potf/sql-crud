--
UPDATE products
SET stock = 120
WHERE product_id = 1;
--
UPDATE products
SET price = price * 1.10
WHERE price < 1.0;
--
UPDATE products p
JOIN (
    SELECT product_id, SUM(quantity) AS total_sold
    FROM orders
    GROUP BY product_id
) o_summary ON p.product_id = o_summary.product_id
SET p.price = p.price * 1.05
WHERE o_summary.total_sold > 10;