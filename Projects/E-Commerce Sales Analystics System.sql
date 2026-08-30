
-- PROJECT: E-COMMERCE SALES ANALYTICS SYSTEM
-- DATABASE: PostgreSQL
--
-- This project demonstrates advanced PostgreSQL concepts:
-- 1. Table Creation
-- 2. Primary Keys and Foreign Keys
-- 3. Joins
-- 4. Subqueries
-- 5. Common Table Expressions (CTEs)
-- 6. Window Functions
-- 7. Views
-- 8. Functions
-- 9. Triggers
--
-- Purpose:
-- To manage customers, products, orders, and sales data
-- while generating analytical reports and business insights.





-- 1. CUSTOMERS TABLE
-- Stores customer information such as name, email, city and registration date.

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    registration_date DATE DEFAULT CURRENT_DATE
);


-- 2. PRODUCTS TABLE
-- Stores product details including category, price and stock quantity.

CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price NUMERIC(10,2),
    stock_quantity INT
);


-- 3. ORDERS TABLE
-- Stores customer orders and links them with customers using a foreign key.

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE DEFAULT CURRENT_DATE,
    order_status VARCHAR(20)
);


-- 4. ORDER DETAILS TABLE
-- Stores products included in each order along with quantity and unit price.

CREATE TABLE order_details(
    detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    unit_price NUMERIC(10,2)
);


-- 5. ORDER LOG TABLE
-- Stores log records generated automatically by triggers.

CREATE TABLE order_log(
    log_id SERIAL PRIMARY KEY,
    order_id INT,
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 6. JOIN QUERY
-- Retrieves customer names and purchased products.

SELECT
c.customer_name,
p.product_name,
od.quantity,
od.unit_price
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_details od
ON o.order_id=od.order_id
JOIN products p
ON p.product_id=od.product_id;


-- 7. SUBQUERY
-- Finds products whose price is greater than the average product price.

SELECT *
FROM products
WHERE price >
(
SELECT AVG(price)
FROM products
);


-- 8. CTE (COMMON TABLE EXPRESSION)
-- Calculates customer-wise revenue using a temporary result set.

WITH customer_revenue AS
(
SELECT
c.customer_id,
c.customer_name,
SUM(od.quantity*od.unit_price) revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_details od
ON o.order_id=od.order_id
GROUP BY c.customer_id,c.customer_name
)

SELECT *
FROM customer_revenue
ORDER BY revenue DESC;


-- 9. WINDOW FUNCTION (RANK)
-- Assigns rank to customers based on total revenue.

SELECT
customer_name,
revenue,
RANK() OVER(ORDER BY revenue DESC) AS customer_rank
FROM
(
SELECT
c.customer_name,
SUM(od.quantity*od.unit_price) revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_details od
ON o.order_id=od.order_id
GROUP BY c.customer_name
)x;


-- 10. VIEW
-- Creates a virtual table that displays customer order summaries.

CREATE VIEW customer_summary AS
SELECT
c.customer_name,
COUNT(o.order_id) total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_name;


-- 11. FUNCTION
-- Returns the total revenue generated from all orders.

CREATE OR REPLACE FUNCTION get_total_revenue()
RETURNS NUMERIC
AS
$$
BEGIN
RETURN
(
SELECT SUM(quantity*unit_price)
FROM order_details
);
END;
$$
LANGUAGE plpgsql;


-- 12. TRIGGER
-- Automatically records every new order inserted into the orders table.

CREATE OR REPLACE FUNCTION log_order_insert()
RETURNS TRIGGER
AS
$$
BEGIN
INSERT INTO order_log(order_id)
VALUES(NEW.order_id);

RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_order_insert
AFTER INSERT
ON orders
FOR EACH ROW
EXECUTE FUNCTION log_order_insert();


