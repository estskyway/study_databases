-- DELETE FROM table_name WHERE condition; 
DELETE FROM membewrs_login
WHERE MEMBERS_ID = 'M-01'; 
DELETE FROM membewrs_login
WHERE MEMBERS_ID = 'M-02'; 
DELETE FROM membewrs_login
WHERE MEMBERS_ID = 'M-03'; 
DELETE FROM membewrs_login
WHERE MEMBERS_ID = 'M-04'; 
DELETE FROM membewrs_login
WHERE MEMBERS_ID = 'M-05'; 

DELETE FROM hobby_code
WHERE MEMBERS_ID = 'M-01'; 
DELETE FROM hobby_code
WHERE MEMBERS_ID = 'M-02'; 
DELETE FROM hobby_code
WHERE MEMBERS_ID = 'M-03'; 
DELETE FROM hobby_code
WHERE MEMBERS_ID = 'M-04'; 
DELETE FROM hobby_code
WHERE MEMBERS_ID = 'M-05'; 

DELETE FROM members
WHERE MEMBERS_ID = 'M-01'; 
DELETE FROM members
WHERE MEMBERS_ID = 'M-02'; 
DELETE FROM members
WHERE MEMBERS_ID = 'M-03'; 
DELETE FROM members
WHERE MEMBERS_ID = 'M-04'; 
DELETE FROM members
WHERE MEMBERS_ID = 'M-05'; 

DELETE FROM address_code
WHERE ADDRESS_CODE_ID = 'A-01'; 
DELETE FROM address_code
WHERE ADDRESS_CODE_ID = 'A-02'; 
DELETE FROM address_code
WHERE ADDRESS_CODE_ID = 'A-03'; 
DELETE FROM address_code
WHERE ADDRESS_CODE_ID = 'A-04'; 
DELETE FROM address_code
WHERE ADDRESS_CODE_ID = 'A-05'; 

DELETE FROM gender_code
WHERE GENDER_CODE_ID = 'G-01'; 
DELETE FROM gender_code
WHERE GENDER_CODE_ID = 'G-04'; 
DELETE FROM gender_code
WHERE GENDER_CODE_ID = 'G-05'; 

DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-01'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-02'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-03'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-04'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-05'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-06'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-07'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-08'; 
DELETE FROM members_hobby
WHERE HOBBY_CODE_ID = 'H-09'; 
