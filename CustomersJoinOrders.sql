-- PK는 CustomerID
SELECT T_CUSTOMERS.CustomerName, COUNT(T_ORDERS.OrderID) AS T_ORDERS_CNT
	FROM Customers AS T_CUSTOMERS
	INNER JOIN ORDERS AS T_ORDERS
    ON T_CUSTOMERS.CustomerID = T_ORDERS.CustomerID
GROUP BY T_CUSTOMERS.CustomerName;


-- Number of Records: 74

-- CustomerName	T_ORDERS_CNT
-- Ana Trujillo Emparedados y helados	1
-- Antonio Moreno Taquería	1
-- Around the Horn	2
-- B's Beverages	1
-- Berglunds snabbköp	3
-- Blondel père et fils	4
-- Bon app'	3
-- Bottom-Dollar Marketse	4
-- Bólido Comidas preparadas	1
-- Centro comercial Moctezuma	1
-- .
-- .
-- .
-- 이하생략

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns