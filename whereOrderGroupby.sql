SELECT COUNT(*) FROM ORDERS
WHERE EmployeeID IN (7,9)
GROUP BY EmployeeID; 

-- COUNT(*)
-- 14
-- 6

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_min