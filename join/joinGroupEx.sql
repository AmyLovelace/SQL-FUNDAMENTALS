-- Group by multiple columns
-- Just like queries on a table, we can use aggregation and grouping functions on queries on multiple tables.

-- Suppose we have two tables: a table called Customers that stores information about customers and another table called Orders that stores information about orders placed by those customers. We want to make a query that shows us the total number of orders placed by each customer. To do this, we will run a query that uses the GROUP BY clause to group the orders by customer and count the total number of orders for each customer.

SELECT c.Name AS CustomerName, COUNT(p.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders p ON c.CustomerID = p.CustomerID
GROUP BY c.ClientID;
-- Exercise
-- We have two tables: Products and Sales. Make a query that shows us the best-selling product and the total number of units sold for that product. The column that shows the total units sold should be called "total_sold"

-- Hint: remember the use of order by and limit

-- Products Table

-- NAME PRICE PRODUCTID
-- Product A 10 1
-- Product B 15 2
-- Product C 20 3
-- Sales Table

-- QUANTITY SALES DATE PRODUCTID
-- 20 '2023-09-01' 1
-- 15 '2023-09-02' 1
-- 10 '2023-09-03' 2
-- 25 '2023-09-04' 3
-- 30 '2023-09-05' 3

SELECT for NAME AS NAME,
       SUM(v.QUANTITY) AS total_sold
FROM Products p
JOIN Sales v ON p.PRODUCTOID = v.PRODUCTOID
GROUP BY p.PRODUCTID, p.NAME
ORDER BY total_sold DESC
LIMIT 1;