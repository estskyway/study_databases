-- Table : Products
-- 조건 : Categories가 Produce, Beverages 제품에 갯수 각각 표시
-- where 완료 후 가상 Table로 groupby 진행

-- SELECT COUNT(*),CategoryName FROM Categories 
-- WHERE CategoryName IN ('Beverages','Produce')
-- GROUP BY CategoryName; 

SELECT COUNT(*) AS DESCRIPTION_CNT, T_OUTER_ORS.CategoryName
FROM
(SELECT T_INNER_ORS.* FROM Categories AS T_INNER_ORS
WHERE T_INNER_ORS.CategoryName IN ('Beverages','Produce')
GROUP BY CategoryName) AS T_OUTER_ORS
GROUP BY T_OUTER_ORS.CategoryName;