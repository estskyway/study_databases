-- 가장 많이 주문 받은 회사 직원명과 갯수
-- ORDERS 와 EMPLOYEES를 사용
-- PK는 EmployeeID

SELECT MAX (T_EMP_ORD.T_ORDER) AS CNT_MAX_ORD_EMP, T_EMP_ORD.LastName, T_EMP_ORD.FirstName
FROM
(SELECT T_EMP.EmployeeID, T_EMP.LastName, T_EMP.FirstName, 
	COUNT(T_ORD.ORDERID)AS T_ORDER
	FROM EMPLOYEES AS T_EMP
	INNER JOIN ORDERS AS T_ORD
    ON T_EMP.EmployeeID = T_ORD.EmployeeID 
    GROUP BY T_ORD.EmployeeID) AS T_EMP_ORD;
    
-- Number of Records: 1
-- CNT_MAX_ORD_EMP	LastName	FirstName
-- 40		Peacock		Margaret

-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns

-- TEACHER`S EXAMPLE
-- SELECT	MAX(T_INNER.CNT), T_INNER.EmployeeID, T_INNER.LASTNAME, T_INNER.FIRSTNAME
-- FROM(
--     SELECT COUNT(*) AS CNT, T_EMPS.EmployeeID, T_EMPS.LASTNAME, T_EMPS.FIRSTNAME 
-- 	FROM EMPLOYEES AS T_EMPS
-- 		INNER JOIN ORDERS AS T_ORDS
-- 	    ON T_EMPS.EmployeeID = T_ORDS.EmployeeID
-- 	GROUP BY T_EMPS.EmployeeID
--     ) T_INNER
