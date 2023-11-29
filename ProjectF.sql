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
	('The Sopranos', 1999, 2007, 6),
	('Wednesday', 2022, NULL, 1),
	('Breaking Bad', 2008, 2013, 5),
	('Squid Game,', 2021, 2021, 1), 
	('The Bear', 2021, 2021, 1),
	('The Shield', 2002, 2008, 1), 
	('Fargo', 2014, NULL, 1),
	('Game of Thrones', 2011, 2019, 9), 
	('BattleStar Galactica', 1978, 1979, 1),
	('The Tick', 2001, 2002, 1), 
	('Firefly', 2002, 2003, 1),
	('Almost Human', 2013, 2014, 1), 
	('Band of Brothers', 2001, 2001, 1),
	('Freaks and Geeks', 1999, 2000, 1), 
	('Police Squad', 1982, 1982, 1),
	('Undeclared', 2001, 2002, 1), 
	('Sherlock', 2010, 2017, 4),
	('My So Called Life', 1994, 1995, 1), 
	('Clone High', 2002, 2003, 1),
	('Flashforward', 2009, 2010, 1), 
	('Total Drama', 2007, 2008, 1),
	('The Big Bang Theory', 2007, 2019, 1), 
	('Regular Show', 2010, 2017, 1),
	('Stranger Things', 2016, 2023, 4), 
	('Better Call Saul', 2008, 2013, 6),
	('Gravity Falls', 2015, 2016, 1), 
	('Twin Peaks', 1989, 1991, 3);
	('Alice in Borderland', 2020, NULL, 2),
	('Insecure', 2016, 2021, 5),
	('The Queen\`s Gambit', 2020, 2020, 1);
	('Unorthodox', 2020, 2020, 1);
	('The Fall of the House of Usher', 2023, 2023, 1);
	('Gaslit', 2023, 2023, 1),
	('Dahmer - Monster: The Jeffrey Dahmer Story', 2023, NULL, 1);
	('Snabba Cash', 2021, 2022, 2);
	('Maid', 2021, 2021, 1);
	('Boo, Bitch', 2022, 2022, 1);
	('The Twelve', 2019, 2023, 2);
	('Superwog', 2018, 2021, 2);
	('The Carrie Diaries', 2013, 2014, 2);

-- Episodes for The Carrie Diaries, Season 1

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

-- all episode for show id=2, Wednesday
  
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES ('Wednesday\'s Child is Full of Wow', 2, 1, 1), 
	('Woe Is The Loneliest Number', 2, 2, 1),
	('Friend or Woe', 2, 3, 1),
	('Woe What a Night', 2, 4, 1),
	('You Reap What You Woe', 2, 5, 1),
	('Quid Prop Woe', 2, 6, 1),
	('If You Don\'s Woe Me by Now', 2, 7, 1),
	('A Merder of Woe', 2, 8, 1);


INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            ('Insecure as Fuck', 7, 1, 1), 
		('Messy as F...', 7, 2, 1),
		('Racist as F...', 7, 3, 1),
		('Thirsty as F...', 7, 4, 1),
		('Shady as F...', 7, 5, 1),
		('Guilty as F...', 7, 6, 1),
		('Real as F...', 7, 7, 1),
		('Broken as F...', 7, 8, 1);

INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            ('Hella Great', 7, 1, 2), 
		('Hella Questions', 7, 2, 2),
		('Hella Open', 7, 3, 2),
		('Hella LA', 7, 4, 2),
		('Hella Shook', 7, 5, 2),
		('Hello Blows', 7, 6, 2),
		('Hella Disrespectful', 7, 7, 2),
		('Hella Perspective', 7, 8, 2);

INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
		('Better-Like', 7, 1, 3),
		('Familiar-Like', 7, 2, 3),
		('Backwards-Like', 7, 3, 3),
		('Fresh-Like', 7, 4, 3),
		('High-Like', 7, 5, 3),
		('Ready-Like', 7, 6, 3),
		('Obsessed-Like', 7, 7, 3),
            ('Ghost-Like', 7, 8, 3);

INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
            ('Lowkey Feelin\' Myself', 7, 10, 4), 
		('Lowkey Distant', 7, 9, 4),
		('Lowkey Thankful', 7, 3, 4),
		('Lowkey Losin\' It', 7, 4, 4),
		('Lokwey Movin\'n On', 7, 5, 4),
		('Lowkey Done', 7, 6, 4),
		('Lowkey Trippin', 7, 7, 4),
		('Lowkey Happy', 7, 8, 4),
		('Lowkey Trying', 7, 9, 4),
            ('Lowkey Lost', 7, 10, 4);
        
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
		('Reunited, Okay?', 7, 2, 5),
		('Growth, Okay?', 7, 3, 5),
		('Pressure, Okay?', 7, 4, 5),
		('Faulty, Okay?', 7, 5, 5),
		('Episode 6', 7, 6, 5),
		('Episode 7', 7, 7, 5),
		('Episode 8', 7, 8, 5),
		('Episode 9', 7, 6, 5),
		('Episode 10', 7, 7, 5);
  
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            ('Openings', 8, 1, 1), 
		('Exchanges', 8, 2, 1),
		('Doubled Pawns', 8, 3, 1),
		('Middle Game', 8, 4, 1),
		('Fork', 8, 5, 1),
		('Adjournment', 8, 6, 1),
		('End Game', 8, 7, 1);


INSERT INTO episode VALUES
("Pilot", 1, 1, 1, '1999'),
("46 Long", 1, 1, 2, '1999'),
("Denial, Anger, Acceptance", 1, 1, 3, '1999'),
("Made in America", 1, 6, 21, '2007-01-10'),
("The Blue Comet", 1, 6, 20, '2007-01-10'),
("Whitecaps", 1, 4, 13, '2002'),
("Ozymandias", 2, 5, 14, 2013),
("Felina", 2, 5, 16, 2013),
("Face Off", 2, 4, 13, 2011),
("Granite State", 5, 15, 2013),
("Crawl Space", 4, 11, 2011),
("Crawl Space", 4, 11, 2011);

INSERT INTO user_episode VALUES
(1, 1, 9, TRUE, FALSE),
(1, 2, 10, TRUE, FALSE),
(1, 3, 10, TRUE, FALSE),
(2, 1, 7, TRUE, FALSE),
(2, 2, 0, FALSE, TRUE),
(2, 3, 8, FALSE, FALSE),
(3, 1, 3, TRUE, FALSE),
(3, 2, 0, FALSE, FALSE),
(3, 3, 0, FALSE, FALSE);


CREATE TABLE platform ( 
	platform_id INT AUTO_INCREMENT PRIMARY KEY,
	platform_name VARCHAR(15)
);

INSERT INTO platform VALUES
(1, "Netflix"),
(2, "Amazon Prime"),
(3, "HBO MAX"),
(4, "Hulu");
