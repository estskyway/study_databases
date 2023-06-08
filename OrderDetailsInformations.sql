-- 제품명, 가격, 주문갯수, 고객명 표시
-- 제품명은 ORDERS의 PRODUCT NAME 가격은 PRODUCT 고객명은 CUSTOMERS

-- 완성 
SELECT T_ALL_INFO.ProductName AS '제품명', T_ALL_INFO.Price AS '가격', T_ALL_INFO.CustomerName AS '고객명', COUNT( T_ALL_INFO.OrderID) AS '주문 갯수'
FROM (SELECT *
FROM (SELECT *
FROM (SELECT * FROM OrderDetails AS T_OD
	INNER JOIN PRODUCTS AS T_PRO
    ON 	T_OD.ProductID = T_PRO.ProductID
GROUP BY ProductName) AS T_OD_PRO
		INNER JOIN ORDERS AS T_ORD
        ON T_OD_PRO.OrderID = T_ORD.OrderID)AS T_OD_ORD_PRO
        	INNER JOIN CUSTOMERS AS T_CUS
            ON T_OD_ORD_PRO.CustomerID = T_CUS.CustomerID) AS T_ALL_INFO
         GROUP BY T_ALL_INFO.OrderID;
            
-- Number of Records: 51
-- 제품명	가격	고객명	주문 갯수
-- Mozzarella di Giovanni	34.8	Wilman Kala	3
-- Manjimup Dried Apples	53	Tradição Hipermercados	2
-- Jack's New England Clam Chowder	9.65	Hanari Carnes	2
-- Gustaf's Knäckebröd	21	Victuailles en stock	2
-- Camembert Pierrot	34	Suprêmes délices	3
-- Chartreuse verte	18	Hanari Carnes	3
-- Guaraná Fantástica	4.5	Chop-suey Chinese	3
-- Chang	19	Richter Supermarkt	4
-- Original Frankfurter grüne Soße	13	Wellington Importadora	2
-- Schoggi Schokolade	43.9	HILARIÓN-Abastos	1
-- Chef Anton's Gumbo Mix	21.35	Ernst Handel	2
-- Gravad lax	26	Centro comercial Moctezuma	2
-- Outback Lager	15	Old World Delicatessen	2
-- .
-- .
-- .
-- .
-- 이하생략

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns








-- 1차 백업
-- SELECT *
-- FROM (SELECT *
-- FROM (SELECT * FROM OrderDetails AS T_OD
-- 	INNER JOIN PRODUCTS AS T_PRO
--     ON 	T_OD.ProductID = T_PRO.ProductID
-- GROUP BY ProductName) AS T_OD_PRO
-- 		INNER JOIN ORDERS AS T_ORD
--         ON T_OD_PRO.OrderID = T_ORD.OrderID)AS T_OD_ORD_PRO
--         	INNER JOIN CUSTOMERS AS T_CUS
--             ON T_OD_ORD_PRO.CustomerID = T_CUS.CustomerID;
--             
--             
--             
--             
-- 2차 백업
--             SELECT T_ALL_INFO.ProductName, T_ALL_INFO.Price, T_ALL_INFO.CustomerName
-- FROM (SELECT *
-- FROM (SELECT *
-- FROM (SELECT * FROM OrderDetails AS T_OD
-- 	INNER JOIN PRODUCTS AS T_PRO
--     ON 	T_OD.ProductID = T_PRO.ProductID
-- GROUP BY ProductName) AS T_OD_PRO
-- 		INNER JOIN ORDERS AS T_ORD
--         ON T_OD_PRO.OrderID = T_ORD.OrderID)AS T_OD_ORD_PRO
--         	INNER JOIN CUSTOMERS AS T_CUS
--             ON T_OD_ORD_PRO.CustomerID = T_CUS.CustomerID) AS T_ALL_INFO;