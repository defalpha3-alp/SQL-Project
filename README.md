# Fast Food Delivery SQL Project

## Overview

This project uses MySQL to model a fast-food delivery business and demonstrate SQL querying skills through related tables, sample data, and practical exercises.

## Database

**Database Name:** `fast_food_delivery`

### Tables

- **Branches** — Stores branch names and locations.
- **Customers** — Stores customer names and phone numbers.
- **menu** — Stores menu item names, categories, and prices.
- **Orders** — Stores customer orders, branch references, order dates, and statuses.
- **order_items** — Stores the menu items included in each order, their quantities, and purchase prices.

## Database Relationships

- Each order references a customer.
- Each order references a branch.
- Each order item references an order.
- Each order item references a menu item.

Primary keys, foreign keys, and `AUTO_INCREMENT` are used to maintain record identification and referential integrity.

## SQL Concepts Practised

- Database and table creation
- Data insertion and retrieval
- `SELECT` and `WHERE`
- `ORDER BY` and `LIMIT`
- Aggregate functions: `COUNT()`, `AVG()`, `MIN()`, `MAX()`, and `SUM()`
- `GROUP BY` and `HAVING`
- `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`
- `UNION` and `UNION ALL`
- Subqueries using `WHERE`, `IN`, `NOT IN`, and aggregate functions

## Project Structure

- `01_fast_food_delivery.sql` — Database creation, table creation, and sample data insertion
- `02_select_queries.sql` — Basic data retrieval
- `03_WHERE & ORDER-BY-LIMIT.sql` — Filtering, sorting, and limiting records
- `04_AggregateFunctions.sql` — Aggregate functions
- `04_GroupBY & Aggregate.sql` — Grouping records and aggregate calculations
- `05_HAVING & Aggregate.sql` — Filtering grouped results
- `06_Joins.sql` — Joining related tables and combining query results
- `07_subQueries.sql` — Nested queries

## Tools Used

- MySQL
- MySQL Workbench

## Learning Objective

The objective of this project is to strengthen SQL fundamentals, understand relational database relationships, and practise retrieving meaningful information from structured data.

## Author

Muhammad Abdullah
