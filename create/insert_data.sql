INSERT INTO products (product_name, price, stock)
VALUES 
('Apple', 1.50, 100),
('Banana', 0.80, 200),
('Orange', 1.20, 150);


INSERT INTO customers (first_name, last_name, email)
VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com');

INSERT INTO products (product_name, price, stock)
SELECT CONCAT(product_name, ' Promo'), price * 1.10, stock
FROM products
WHERE price < 20;
