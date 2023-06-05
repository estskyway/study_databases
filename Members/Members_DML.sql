-- INSERT INTO gender_code 
-- (GENDER, GENDER_CODE) VALUES ('남', 'G-01');

-- INSERT INTO gender_code 
-- (GENDER, GENDER_CODE) VALUES ('여', 'G-04');

-- INSERT INTO gender_code 
-- (GENDER, GENDER_CODE) VALUES ('양성', 'G-05');

-- INSERT INTO address_code
-- (ADDRESS, ADDRESS_CODE_ID)
-- VALUES
-- ('서울시', 'A-01'), 
-- ('부산시', 'A-02'), 
-- ('경기도', 'A-03'),
-- ('대전시', 'A-04'),
-- ('인천시', 'A-05');

-- INSERT INTO hobby_core
-- (HOBBY, HOBBY_CORE_ID)
-- VALUES
-- ('요리', 'H-01'),
-- ('등산', 'H-02'),
-- ('독서', 'H-03'),
-- ('영화 감상', 'H-04'),
-- ('음악 감상', 'H-05'),
-- ('요가', 'H-06'),
-- ('여행', 'H-07'),
-- ('사진 촬영', 'H-08'),
-- ('수영', 'H-09');

INSERT INTO mem_hobby
(MEMBERS_ID,HOBBY_CORE_ID)
VALUES
('M-01', 'H-01'),
('M-01', 'H-02'),
('M-02', 'H-03'),
('M-02', 'H-04'),
('M-03', 'H-05'),
('M-03', 'H-06'),
('M-04', 'H-07'),
('M-04', 'H-08'),
('M-05', 'H-02'),
('M-05', 'H-09');

INSERT INTO mem_login
(EMAIL,MEM_LOGIN_ID,MEMBERS_ID)
VALUES
('hong@gmail.com', 'ML-01', 'M-01'),
('park.younghee@naver.com', 'ML-02', 'M-02'),
('kimchulsu@gmail.com', 'ML-03', 'M-03'),
('leeyoungmi@naver.com', 'ML-04', 'M-04'),
('jmh123@gmail.com', 'ML-05', 'M-05');

INSERT INTO mem_info 
(NAME, AGE, ADDRESS, PHONE_NUM, MEMBERS_ID, GENDER_CODE, ADDRESS_CODE_ID) 
VALUES 
('홍길동', 30, '','010-1234-5678', 'M-01', 'G-01', 'A-01'),
('박영희', 25, '','010-9876-5432', 'M-02', 'G-04', 'A-02'),
('김철수', 35, '','010-1111-2222', 'M-03', 'G-01', 'A-03'),
('이영미', 28, '','010-3333-4444', 'M-04', 'G-04', 'A-04'),
('정민호', 32, '','010-5555-6666', 'M-05', 'G-01', 'A-05');