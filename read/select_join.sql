-- Join products and orders (example table)
SELECT p.product_name, c.first_name, c.last_name
FROM products p
JOIN orders o ON p.product_id = o.product_id
JOIN customers c ON o.customer_id = c.customer_id;
