USE fast_food_delivery;

SELECT item_name, price FROM menu
WHERE price > (SELECT AVG (price) FROM menu);


SELECT item_name, price FROM menu
WHERE price = (SELECT MAX(price) AS highest_price FROM menu); 


SELECT customer_id, customer_name FROM Customers
WHERE customer_id IN (SELECT DISTINCT customer_id FROM Orders);


SELECT item_id, item_name FROM menu 
WHERE item_id NOT IN (SELECT DISTINCT item_id FROM order_items);



SELECT  order_id, order_total FROM (SELECT  order_id, SUM(quantity*price_at_purchase) AS order_total
FROM order_items
GROUP BY order_id) AS order_summary WHERE order_total > 1000;

