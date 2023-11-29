CREATE DATABASE show_tracker;

CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(15),
user_password VARCHAR(15),
age INT NOT NULL
);
DROP TABLE users;

--for users
INSERT INTO users (username, user_password, age) VALUES
('robert125', 'Atlas&theAir', 54), ('adam@johnson', 'DevilsPaw', 32),
('GodsChild4U', 'Living$84', 36), ('leo1366', 'Walrus9%', 40),
('13mario!', 'mammoth93', 19), ('patrick159', 'badger$23', 28),
('joshua#1', 'Axis0Fevil', 25), ('GiantOrGod?', 'Bluffs@4942', 41),
('Swiftie4U', '77Taylor23', '19'), ('GodOfRome', '64578@K', 59),
('BackIn1985', 'tigerhawk', '22'), ('Jordan1776', '19patriots', 30),
('MikeGod', 'moses14U', 45), ('Carol166', 'LoveHurts99', 35),
('george1225', 'Hi88K', 26), ('JawsLord', 'mul98*54', 51),
('JuliusPalace', '@Ceaser87', 19), ('Freddy845', 'tigerOh23', 23),
('Harold1939', '$Meridian#5', 47), ('Pat&Royce', 'papa?6^6', 39),
('LionKing1994', 'simbaah3!', 34), ('David100%', 'Stir16pots', 38),
('julia1549', 'ConvictBoy', 65), ('283594', 'Bolton<?>', 28),
('?Madison!', 'peoples69', 40), ('Godeater', '2123455', 39),
('Matt1935', 'Fire&Blood', 29), ('WorldsEnd', 'jay757pol', 31),
('For7orNaught', '220Ball17', 45), ('Sarah20559', '75:rearend', 30),
('Christian1994', 'Rain/bow*', 19), ('Jenn!99%', 'g4u3w6s22ou', 22),
('Enigma1942', 'Shark55#rea', 31), ('Jackson1*', '40/wolf\35', 30),
('GatorFL81', 'muschamp333', 27), ('EVILin666', '14Cult/120tut', 42),
('1984Orwell', 'BigBrother', 51), ('SpidermanPS3', 'a2n743rtx2z', 24),
('Max563Iowa', 'pillow930-039', 38), ('robert$500', 'liveordie13', 44);

CREATE TABLE shows (
show_id INT AUTO_INCREMENT PRIMARY KEY,
show_name VARCHAR(100),
start_year INT,
end_year INT,
number_of_seasons INT NOT NULL
);

CREATE TABLE episode (
	episode_id INT PRIMARY KEY AUTO_INCREMENT,
   	 episode_title VARCHAR(50) NOT NULL,
	show_id INT NOT NULL,
    	episode_number INT NOT NULL,
   	 season_number INT NOT NULL,
   	 CONSTRAINT
		FOREIGN KEY (show_id)
		REFERENCES shows(show_id), 
	CONSTRAINT
		UNIQUE(show_id, episode_number, season_number)
);

--show_id = 1
INSERT INTO shows (show_name, start_year, end_year, number_of_seasons)
VALUES 
('The Sopranos', 1999, 2007, 1);
('Breaking Bad', 2008, 2013, 1);
('Squid Game,', 2021, 2021, 1), 
('The Bear', 2021, 2021, 1),
('The Shield', 2002, 2008, 1), 
('Fargo', 2014, NULL, 1),
('Game of Thrones', 2011, 2019, 1), 
('BattleStar Galactica', 1978, 1979, 1),
('The Tick', 2001, 2002, 1), 
('Firefly', 2002, 2003, 1),
('Almost Human', 2013, 2014, 1), 
('Band of Brothers', 2001, 2001, 1),
('Freaks and Geeks', 1999, 2000, 1), 
('Police Squad', 1982, 1982, 1),
('Undeclared', 2001, 2002, 1), 
('Sherlock', 2010, 2017, 1),
('My So Called Life', 1994, 1995, 1), 
('Clone High', 2002, 2003, 1),
('Flashforward', 2009, 2010, 1), 
('Total Drama', 2007, 2008, 1),
('The Big Bang Theory', 2007, 2019, 1), 
('Regular Show', 2010, 2017, 1),
('Stranger Things', 2016, 2023, 1), 
('Better Call Saul', 2008, 2013, 1),
('Gravity Falls', 2015, 2016, 1), 
('Twin Peaks', 1989, 1991, 1);
('Alice in Borderland', 2020, NULL, 2),
('Wednesday', 2022, NULL, 1),
('Insecure', 2016, 2021, 5),
('The Queen\`s Gambit', 2020, 2020, 1);
('Unorthodox', 2020, 2020, 1);
('The Fall of the House of Usher', 2023, 2023, 1);
('Gaslit', 2023, 2023, 1);
('Dahmer - Monster: The Jeffrey Dahmer Story', 2023, NULL, 1);
('Snabba Cash', 2021, 2022, 2);
('Maid', 2021, 2021, 1);
('Boo, Bitch', 2022, 2022, 1);
('The Twelve', 2019, 2023, 2);
('Superwog', 2018, 2021, 2);
('The Carrie Diaries', 2013, 2014, 2);

INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
		('Episode 1', 40, 1, 1), 
		('Episode 2', 40, 2, 1),
		('Episode 3', 40, 3, 1),
		('Episode 4', 40, 4, 1),
		('Episode 5', 40, 5, 1),
		('Episode 6', 40, 6, 1),
		('Episode 7', 40, 7, 1),
		('Episode 8', 40, 8, 1),
        	('Episode 1', 40, 9, 1), 
		('Episode 2', 40, 10, 1),
		('Episode 3', 40, 11, 1),
		('Episode 4', 40, 12, 1),
		('Episode 5', 40, 13, 1),

 -- all episode for show_id = 1
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	('Episode 1', 1, 1, 1), 
	('Episode 2', 1, 2, 1),
	('Episode 3', 1, 3, 1),
	('Episode 4', 1, 4, 1),
	('Episode 5', 1, 5, 1),
	('Episode 6', 1, 6, 1),
	('Episode 7', 1, 7, 1),
	('Episode 8', 1, 8, 1),

        ('Episode 1', 1, 1, 2), 
	('Episode 2', 1, 2, 2),
	('Episode 3', 1, 3, 2),
	('Episode 4', 1, 4, 2),
	('Episode 5', 1, 5, 2),
	('Episode 6', 1, 6, 2),
	('Episode 7', 1, 7, 2),
	('Episode 8', 1, 8, 2);

-- all episode for show id=2 
  
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES ('Wednesday\'s Child is Full of Wow', 2, 1, 1), 
	('Woe Is The Loneliest Number', 2, 2, 1),
	('Friend or Woe', 2, 3, 1),
	('Woe What a Night', 2, 4, 1),
	('You Reap What You Woe', 2, 5, 1),
	('Quid Prop Woe', 2, 6, 1),
	('If You Don\'s Woe Me by Now', 2, 7, 1),
	('A Merder of Woe', 2, 8, 1);
        
CREATE TABLE platform ( 
	platform_id INT AUTO_INCREMENT PRIMARY KEY,
	platform_name VARCHAR(15)
);

INSERT INTO platform VALUES
(1, "Netflix"),
(2, "Amazon Prime"),
(3, "HBO MAX"),
(4, "Hulu");
