USE fast_food_delivery;

SELECT category, AVG(price) AS average_price FROM menu GROUP BY category HAVING AVG(price) > 500;

SELECT status,  COUNT(*) AS total_orders FROM orders GROUP BY status HAVING COUNT(*) > 1;

SELECT category, COUNT(*) AS total_items FROM menu GROUP BY category HAVING COUNT(*) > 1;

SELECT item_id, SUM(quantity) AS total_quantity FROM order_items GROUP BY item_id HAVING SUM(quantity) > 5;
