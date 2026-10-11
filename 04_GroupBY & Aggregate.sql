USE fast_food_delivery;

SELECT category , COUNT(*) AS total_items FROM menu GROUP BY category;

SELECT category, AVG (price) AS average_price FROM menu GROUP BY category;

SELECT status , COUNT(*) AS total_orders FROM orders GROUP BY status;

SELECT item_id , SUM(quantity) AS total_quantity FROM order_items GROUP BY item_id;

