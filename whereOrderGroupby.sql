SELECT COUNT(*) FROM ORDERS
WHERE EmployeeID IN (7,9)
GROUP BY EmployeeID; 


-- COUNT()	EmployeeID
-- 14		7
-- 6		9

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_min