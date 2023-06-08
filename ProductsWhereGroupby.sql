SELECT COUNT(T_PRO.CategoryID) AS CNT_CATE_ID 
FROM Products AS T_PRO
GROUP BY T_PRO.CategoryID
HAVING COUNT(T_PRO.CategoryID) >= 10;

-- 원하는 답이 안나와요 .... 무엇이 잘못 되었는지 모르겠어요 
-- REFER : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_having