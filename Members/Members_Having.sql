-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);

SELECT *
FROM (SELECT count(T_MEMB.AGE) as CNT_AGE, T_MEMB.AGE
    FROM members as T_MEMB
	GROUP BY T_MEMB.AGE ) AS T_INNER_MEMB
WHERE T_INNER_MEMB.CNT_AGE >= 2 ;


SELECT count(T_MEMB.AGE) as CNT_AGE, T_MEMB.AGE
FROM members as T_MEMB
GROUP BY T_MEMB.AGE 
HAVING COUNT(T_MEMB.AGE) >= 2;

-- (SELECT count(T_MEMB.AGE) as CNT_AGE, T_MEMB.AGE
-- FROM members as T_MEMB
-- GROUP BY T_MEMB.AGE ) AS T_INNER_MEMB;

SELECT count(T_MEMB.AGE) as CNT_AGE, T_MEMB.AGE
FROM members as T_MEMB
GROUP BY T_MEMB.AGE ;