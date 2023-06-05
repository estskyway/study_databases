
CREATE TABLE CARS
(
  COMPANY_NAME  VARCHAR(50) NULL     COMMENT '회사이름',
  UNIQUE_ID     VARCHAR(50) NOT NULL COMMENT '유니크ID',
  CARS_NAME_ID  VARCHAR(50) NOT NULL COMMENT '자동차이름ID',
  CARS_YEARS_ID VARCHAR(50) NOT NULL COMMENT '연식ID',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '자동차';

CREATE TABLE CARS_NAME
(
  CARS_NAME    VARCHAR(50) NULL     COMMENT '자동차이름',
  CARS_NAME_ID VARCHAR(50) NOT NULL COMMENT '자동차이름ID',
  PRIMARY KEY (CARS_NAME_ID)
) COMMENT '자동차이름';

CREATE TABLE CARS_OPTION
(
  OPTION              VARCHAR(50) NULL     COMMENT '옵션',
  CARS_OPTION_CODE_ID VARCHAR(50) NOT NULL COMMENT '자동차옵션코드ID',
  PRIMARY KEY (CARS_OPTION_CODE_ID)
) COMMENT '자동차 옵션';

CREATE TABLE CARS_OPTION_CODE
(
  UNIQUE_ID           VARCHAR(50) NOT NULL COMMENT '유니크ID',
  CARS_OPTION_CODE_ID VARCHAR(50) NOT NULL COMMENT '자동차옵션코드ID'
) COMMENT '자동차옵션코드';

CREATE TABLE CARS_YEARS
(
  CARS_YEARS    VARCHAR(50) NULL     COMMENT '연식',
  CARS_YEARS_ID VARCHAR(50) NOT NULL COMMENT '연식ID',
  PRIMARY KEY (CARS_YEARS_ID)
) COMMENT '연식';

ALTER TABLE CARS
  ADD CONSTRAINT FK_CARS_NAME_TO_CARS
    FOREIGN KEY (CARS_NAME_ID)
    REFERENCES CARS_NAME (CARS_NAME_ID);

ALTER TABLE CARS
  ADD CONSTRAINT FK_CARS_YEARS_TO_CARS
    FOREIGN KEY (CARS_YEARS_ID)
    REFERENCES CARS_YEARS (CARS_YEARS_ID);

ALTER TABLE CARS_OPTION_CODE
  ADD CONSTRAINT FK_CARS_TO_CARS_OPTION_CODE
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES CARS (UNIQUE_ID);

ALTER TABLE CARS_OPTION_CODE
  ADD CONSTRAINT FK_CARS_OPTION_TO_CARS_OPTION_CODE
    FOREIGN KEY (CARS_OPTION_CODE_ID)
    REFERENCES CARS_OPTION (CARS_OPTION_CODE_ID);