-- Increase price by 10% for all products cheaper than 1.0
UPDATE products
SET price = price * 1.10
WHERE price < 1.0;
