SELECT * FROM products;
--
SELECT p.product_name, c.first_name, c.last_name
FROM products p
JOIN orders o ON p.product_id = o.product_id
JOIN customers c ON o.customer_id = c.customer_id;

SELECT * FROM products
WHERE price > 1.0;
--
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.quantity) AS total_items
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_items DESC
LIMIT 5;
--
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
