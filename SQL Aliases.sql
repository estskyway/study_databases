SELECT COUNT(*) AS EMPLOYEE_CNT, T_OUTER_ORS.EmployeeID
FROM (
	SELECT T_INNER_ORS.*
	FROM ORDERS AS T_INNER_ORS 
	WHERE T_INNER_ORS.EmployeeID IN (7,9)
	) AS T_OUTER_ORS
GROUP BY T_OUTER_ORS.EmployeeID;

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_min