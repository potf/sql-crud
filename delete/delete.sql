--
DELETE FROM products
WHERE stock = 0;
--
DELETE FROM customers
WHERE customer_id = 2;
--
DELETE FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);
--
DELETE FROM products
WHERE stock < 5 AND product_id NOT IN (SELECT DISTINCT product_id FROM orders);