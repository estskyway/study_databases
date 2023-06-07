-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;

SELECT COUNT(MEMBERS_ID) FROM members
WHERE GENDER_CODE_ID = 'G-04'
GROUP BY MEMBERS_ID;

SELECT * FROM members;