"Monthly Sales Trend"
  
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

"Top Customers"
  
SELECT 
    c.name,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

"Repeat Customers"
  
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

"City-wise Sales"
  
SELECT 
    c.city,
    SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;

"Average Order Value"
  
SELECT AVG(amount) AS avg_order_value
FROM orders;
