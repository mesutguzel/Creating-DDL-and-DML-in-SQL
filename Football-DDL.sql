
--Description: script to populate the tables




--Tables dropped if exists
DROP TABLE IF EXISTS Awards_T;
DROP TABLE IF EXISTS Local_League_T;
DROP TABLE IF EXISTS Champions_League_T;
DROP TABLE IF EXISTS National_T;
DROP TABLE IF EXISTS Player_T;
DROP TABLE IF EXISTS COUNTRY_T;


--Creating table of Country_T
CREATE TABLE COUNTRY_T (
  Cntry_Code	   CHAR( 3 ),
  Cntry_Name 	   VARCHAR( 30 ) NOT NULL,
  CONSTRAINT PK_COUNTRY PRIMARY KEY( Cntry_Code )
);


CREATE TABLE Player_T (
Player_ID  	 VARCHAR( 30 ),
Player_Name  	 VARCHAR( 30 ),
Player_Lastname  VARCHAR( 30 ),
Cntry_Code	 CHAR( 3 ),
Team_Name	 VARCHAR( 30 ),
CONSTRAINT PK_Player PRIMARY KEY( Player_ID ),
CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code ) REFERENCES COUNTRY_T(Cntry_Code)
);


--Creating table of NATIONAL_T
CREATE TABLE National_T (
  Player_ID        VARCHAR( 30 ) NULL, 
  Cntry_Call	   CHAR( 3 ), 
  National_Trophy  INT,
  Number_Call      CHAR( 3 ) NULL,
  Number_Goal      CHAR( 3 ) NOT NULL,
  Number_Assist    CHAR( 3 ) NOT NULL,
  CONSTRAINT PK_National PRIMARY KEY( Number_Call ),
  CONSTRAINT FK_Player_ID FOREIGN KEY( Player_ID ) REFERENCES Player_T( Player_ID ),
  CONSTRAINT FK_Cntry_Call FOREIGN KEY( Cntry_Call ) REFERENCES COUNTRY_T( Cntry_Code )
);


CREATE TABLE Champions_League_T (
  Player_ID       VARCHAR( 30 ),
  Team_Name       VARCHAR( 30 ),
  Cntry_Code	  CHAR( 3 ),
  Number_Game	  CHAR( 3 ) NULL,
  Number_Goal	  CHAR( 3 )  NULL,
  Number_Assist   BIGINT NULL,
  Number_Trophy   CHAR( 3 ),
  CONSTRAINT FK_Player_ID FOREIGN KEY( Player_ID) REFERENCES Player_T( Player_ID ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code ) REFERENCES COUNTRY_T( Cntry_Code )
);


CREATE TABLE Local_League_T (
  Player_ID       VARCHAR( 30 ),
  Cntry_Code	  CHAR( 3 ),
  Team_Name       VARCHAR( 30 )  NULL,
  Number_Game	  INT NULL,
  Number_Goal	  CHAR( 3 )  NULL,
  Number_Assist   BIGINT NULL,
  Number_Trophy   CHAR( 3 ),
  CONSTRAINT FK_Player_ID FOREIGN KEY( Player_ID) REFERENCES Player_T( Player_ID ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code) REFERENCES COUNTRY_T( Cntry_Code )
);


--Creating table of Awards_T
CREATE TABLE Awards_T (
  Player_ID        VARCHAR( 30 ) ,
  Cntry_Code	   CHAR( 3 ),
  Number_Awards    CHAR( 3 )  NULL,
  Name_Awards      VARCHAR( 30 ) NULL,
  Number_Nominee   CHAR( 3 )  NULL,
  Year_Awards	   INT,
  CONSTRAINT PK_Awards  PRIMARY KEY( Name_Awards ),
  CONSTRAINT FK_Player_ID FOREIGN KEY( Player_ID) REFERENCES Player_T( Player_ID )
);
