-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC;


select * from members
WHERE AGE BETWEEN 25 AND 35 
ORDER BY GENDER_CODE_ID, AGE DESC;-- DESC는 내림차순 기본은 오름차순

SELECT * FROM members
WHERE AGE IN (32, 28)
ORDER BY ADDRESS_CODE_ID DESC;