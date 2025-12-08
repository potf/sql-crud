-- Delete all products with zero stock
DELETE FROM products
WHERE stock = 0;
