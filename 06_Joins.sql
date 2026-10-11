USE fast_food_delivery;

SELECT o.order_id, c.customer_name FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id; 


SELECT o.order_id, c.customer_name , b.location FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Branches b ON o.branch_id = b.branch_id;


SELECT m.item_name, oi.quantity, oi.price_at_purchase FROM order_items oi
INNER JOIN menu m ON oi.item_id = m.item_id;


SELECT order_id, SUM(quantity * price_at_purchase) AS total_amount
FROM order_items
GROUP BY order_id;


SELECT o.order_id, c.customer_name, b.location, m.item_name, oi.quantity, oi.price_at_purchase
FROM order_items oi 
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Branches b ON o.branch_id = b.branch_id
INNER JOIN menu m ON oi.item_id = m.item_id;


SELECT c.customer_name, o.order_id FROM Customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


SELECT m.item_name, oi.order_id, oi.quantity FROM order_items oi
RIGHT JOIN menu m
ON oi.item_id = m.item_id;


SELECT b.location, COUNT(o.order_id) AS total_orders_placed
FROM Branches b
INNER JOIN orders o ON b.branch_id = o.branch_id
GROUP BY b.location;