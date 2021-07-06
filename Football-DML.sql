--FileName: AssingmentII-DML.sql
--Description: script to populate the tables
--CST312
--Author: Mesut Doganguzel
--Year:2020
--Last Modified: 16 Nov 2020

DELETE FROM Awards_T;
DELETE FROM Local_League_T;
DELETE FROM Champions_League_T;
DELETE FROM National_T;
DELETE FROM Player_T;
DELETE FROM COUNTRY_T;

-- Add Country data
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES(  'POR', 'Portugal' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'FRA', 'France' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'BRA', 'Brazil' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'ARG', 'Argentina' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'EGY', 'Egypt' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'BEL', 'Belgian' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'GER', 'Germany' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'SEN', 'Senegal' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'WAL', 'Wales' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'URU', 'Uruguay' );
INSERT INTO Country_T( Cntry_Code, Cntry_Name ) VALUES( 'SWE', 'Sweden' );



-- Add Top Player data
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 01, 'Cristiano', 'Ronaldo', 'POR', 'Juventus' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 02, 'Kylian', 'Mbappe', 'FRA', 'PSG' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 03, 'Neymar', 'da Silva Santos', 'BRA', 'PSG' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 04, 'Lionel', 'Messi', 'ARG', 'Barcelona' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 05, 'Mohammed', 'Salah', 'EGY', 'Liverpool' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 06, 'Eden', 'Hazard', 'BEL', 'Real Madrid' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 07, 'Mesut', 'Ozil', 'GER', 'Arsenal' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 08, 'Sadio', 'Mane', 'SEN', 'Liverpool' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 09, 'Gareth', 'Bale', 'WAL', 'Tothennam Hotspurs' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 10, 'Edinson', 'Cavani', 'URU', 'Manchester United' );
INSERT INTO Player_T( Player_ID, Player_Name, Player_Lastname, Cntry_Code, Team_Name ) VALUES( 11, 'Zlatan', 'Ibrahimovic', 'SWE', 'AC Milan' );


-- Add National team data
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 01, 'POR', 1, 22, 78, 25 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 02, 'FRA', 1, 15, 45, 34 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 03, 'BRA', 2, 10, 34, 21 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 04, 'ARG', 1, 21, 75, 34 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 05, 'EGY', 0, 17, 49, 45 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 06, 'BEL', 1, 16, 32, 18 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 07, 'GER', 2, 19, 31, 28 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 08, 'SEN', 0, 8, 17, 12 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 09, 'WAL', 0, 14, 28, 14 );
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 10, 'URU', 1, 18, 27, 17);
INSERT INTO National_T( Player_ID, Cntry_Call, National_Trophy, Number_Call, Number_Goal, Number_Assist )
VALUES( 11, 'SWE', 0, 26, 54, 9 );


-- Add Champion League data
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 01, 'Juventus', 'POR', 15, 24, 12, 2 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 02, 'PSG', 'FRA', 22, 16, 24, 1 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 03, 'PSG', 'BRA', 10, 18, 14, 3 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 04, 'Barcelona', 'ARG', 13, 21, 11, 0 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 05, 'Liverpool', 'EGY', 18, 23, 13, 0 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 06, 'Real Madrid', 'BEL', 14, 16, 21, 1 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 07, 'Arsenal', 'GER', 16, 13, 14, 0 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 08, 'Liverpool', 'SEN', 11, 8, 17, 0 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 09, 'Tothennam Hotspurs', 'WAL', 12, 14, 12, 1 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 10, 'Manchester United', 'URU', 14, 12, 11, 0 );
INSERT INTO Champions_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 11, 'AC Milan', 'SWE', 15, 16, 10, 2 );


--Add Local League data
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 01, 'Juventus', 'POR', 32, 42, 12, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 02, 'PSG', 'FRA', 22, 22, 24, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 03, 'PSG', 'BRA', 26, 19, 14, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 04, 'Barcelona', 'ARG', 31, 32, 11, 0 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 05, 'Liverpool', 'EGY', 26, 36, 13, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 06, 'Real Madrid', 'BEL', 24, 15, 21, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 07, 'Arsenal', 'GER', 32, 26, 14, 0 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 08, 'Liverpool', 'SEN', 28, 16, 17, 1 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 09, 'Tothennam Hotspurs', 'WAL', 29, 24, 12, 0 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 10, 'Manchester United', 'URU', 23, 19, 11, 0 );
INSERT INTO Local_League_T( Player_ID, Team_Name, Cntry_Code, Number_Game, Number_Goal, Number_Assist, Number_Trophy )
VALUES( 11, 'AC Milan', 'SWE', 32, 18, 10, 0 );

--Add Awards_T data
INSERT INTO Awards_T( Player_ID, Cntry_Code, Number_Awards, Name_Awards, Number_Nominee, Year_Awards )
VALUES( 01, 'POR', 1, 'Ballon d Or', 3, 2020 );
INSERT INTO Awards_T( Player_ID, Cntry_Code, Number_Awards, Name_Awards, Number_Nominee, Year_Awards )
VALUES( 01, 'POR', 1, 'Dubai Globe Soccer Awards', 2, 2019 );
INSERT INTO Awards_T( Player_ID, Cntry_Code, Number_Awards, Name_Awards, Number_Nominee, Year_Awards )
VALUES( 03, 'BRA', 1, 'Samba Gold', 1, 2017 );
INSERT INTO Awards_T( Player_ID, Cntry_Code, Number_Awards, Name_Awards, Number_Nominee, Year_Awards )
VALUES( 04, 'ARG', 1, 'Laureus Award', 2, 2020 );
INSERT INTO Awards_T( Player_ID, Cntry_Code, Number_Awards, Name_Awards, Number_Nominee, Year_Awards )
VALUES( 04, 'ARG', 1, 'Fifas The Best mens player',1, 2019 );




-- Assignment2-DML.sql