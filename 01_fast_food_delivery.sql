CREATE DATABASE fast_food_delivery;
USE fast_food_delivery;
SELECT DATABASE();


CREATE TABLE Branches
(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
branch_name VARCHAR(100) NOT NULL,
location VARCHAR(100) NOT NULL
);


CREATE TABLE Customers
(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100) NOT NULL,
phone VARCHAR(20) UNIQUE
);


CREATE TABLE menu
(
item_id INT PRIMARY KEY AUTO_INCREMENT,
item_name VARCHAR(100) NOT NULL,
category VARCHAR(100) NOT NULL,
price DECIMAL (10,3) NOT NULL
);


CREATE TABLE Orders
(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
branch_id INT NOT NULL,
order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
status VARCHAR(30) DEFAULT 'Pending',

FOREIGN KEY (customer_id)  REFERENCES Customers(customer_id),
FOREIGN KEY (branch_id)  REFERENCES Branches(branch_id)
);


CREATE TABLE order_items
(
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
item_id INT NOT NULL,
quantity INT NOT NULL,
price_at_purchase DECIMAL(10,3) NOT NULL,

FOREIGN KEY (order_id)  REFERENCES Orders(order_id),
FOREIGN KEY (item_id)  REFERENCES menu(item_id)
);

SHOW TABLES;

INSERT INTO Branches (branch_name, location) 
VALUES('Burger-Hub', 'F-10 - Islamabad'),
('Burger-Hub', 'BlueArea - Islamabad'),
('Burger-Hub', 'Saddar - Islamabad');


INSERT INTO Customers(customer_name,phone)
VALUES ('Ali Khan', '03001234567'),
('Ahmed Raza', '03011234567'),
('Sara Ahmed', '03021234567'),
('Usman Malik', '03031234567'),
('Fatima Noor', '03041234567');


INSERT INTO menu (item_name, category, price)
VALUES ('Zinger Burger', 'Burger', 650.00),
('Beef Burger', 'Burger', 800.00),
('Chicken Pizza', 'Pizza', 1200.00),
('French Fries', 'Sides', 250.00),
('Chocolate Shake', 'Drinks', 350.00);


INSERT INTO Orders(branch_id, customer_id, status)
VALUES (1, 1, 'Delivered'),
(2, 2, 'Pending'),
(3, 1, 'Delivered'),
(3, 3, 'Cancelled'),
(1, 2, 'Delivered'),
(2, 3, 'Preparing');


INSERT INTO order_items(order_id, item_id, quantity, price_at_purchase)
VALUES(8, 1, 2, 650.00),
(8, 4, 1, 250.00),
(9, 2, 1, 800.00),
(7, 5, 6, 350.00),
(12, 3, 1, 1200.00),
(11, 4, 4, 250.00),
(10, 1, 3, 650.00),
(12, 2, 2, 800.00),
(11, 5, 1, 350.00),
(9, 1, 3, 650.00),
(12, 4, 4, 250.00);


