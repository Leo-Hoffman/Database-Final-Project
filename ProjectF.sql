DROP DATABASE IF EXISTS show_tracker;
CREATE DATABASE show_tracker;

USE show_tracker;

CREATE TABLE users (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(15),
	user_password VARCHAR(15),
	age INT NOT NULL
);

-- for users

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

CREATE TABLE platform ( 
	platform_name VARCHAR(20) PRIMARY KEY
);

INSERT INTO platform VALUES
("Netflix"),
("Amazon Prime"),
("HBO MAX"),
("Hulu"),
('Peacock'),

('Tubi'),
('Disney+'),
('Paramount+'),
('Starz'),
('Youtube Premium'),

('Showtime'),
('Apple TV+'),
('ESPN+'),
('MGM+'),
('iQIYI'),

('Tencent Video'),
('Discovery+'),
('Youku'),
('Vidio'),
('ZEE5'),

('SonyLIV'),
('iflix'),
('Curiousity Stream'),
('CNN+'),
('Eros Now'),

('DAZN'),
('Crunchyroll'),
('Funimation'),
('Viu'),
('iWantTFC'),

('JioCinema'),
('Mubi'),
('Vudu'),
('Globoplay'),
('Viaplay'),

('TVING'),
('RightNow Media'),
('U-Next'),
('Crave'),
('BET+');

CREATE TABLE shows (
	show_id INT AUTO_INCREMENT PRIMARY KEY,
	show_name VARCHAR(100),
	start_year INT,
	end_year INT,
	number_of_seasons INT NOT NULL,
    platform VARCHAR(20),
    CONSTRAINT
		FOREIGN KEY (platform)
		REFERENCES platform(platform_name)
);

CREATE TABLE episode (
	episode_id INT PRIMARY KEY AUTO_INCREMENT,
   	episode_title VARCHAR(100) NOT NULL,
	show_id INT NOT NULL,
    	episode_number INT NOT NULL,
   	season_number INT NOT NULL,
   	 CONSTRAINT
		FOREIGN KEY (show_id)
		REFERENCES shows(show_id), 
	CONSTRAINT
		UNIQUE(show_id, episode_number, season_number)
);


-- show_id = 1
INSERT INTO shows (show_name, start_year, end_year, number_of_seasons, platform)
VALUES 
	('The Sopranos', 1999, 2007, 6, 'HBO Max'), 
	('Wednesday', 2022, NULL, 1, 'Netflix'),
	('Breaking Bad', 2008, 2013, 5, 'Netflix'),
	('Squid Game,', 2021, 2021, 1, 'Netflix'), 
	('The Bear', 2021, 2021, 1, 'Hulu'),
	('The Shield', 2002, 2008, 1, 'Hulu'), 
	('Fargo', 2014, NULL, 1, 'Hulu'),
	('Game of Thrones', 2011, 2019, 9, 'HBO Max'), 
	('BattleStar Galactica', 1978, 1979, 1, NULL),
	('The Tick', 2001, 2002, 1, 'Amazon Prime'), 
	
	('Firefly', 2002, 2003, 1, 'Hulu'),
	('Almost Human', 2013, 2014, 1, 'Tubi'), 
	('Band of Brothers', 2001, 2001, 1, 'HBO Max'),
	('Freaks and Geeks', 1999, 2000, 1, 'Paramount+'), 
	('Police Squad', 1982, 1982, 1, NULL),
	('Undeclared', 2001, 2002, 1, NULL), 
	('Sherlock', 2010, 2017, 4, 'Vudu'),
	('My So Called Life', 1994, 1995, 1, 'Hulu'), 
	('Clone High', 2023, 2023, 1, 'Paramount+'),
	
	('Flashforward', 2009, 2010, 1, NULL), 
	('Total Drama', 2007, 2008, 1, 'Netflix'),
	('The Big Bang Theory', 2007, 2019, 1, 'HBO Max'), 
	('Regular Show', 2010, 2017, 1, 'Hulu'),
	('Stranger Things', 2016, 2023, 4, 'Netflix'), 
	('Better Call Saul', 2008, 2013, 6, 'Netflix'),
	('Gravity Falls', 2015, 2016, 1, 'Hulu'), 
	('Twin Peaks', 1989, 1991, 3, 'Paramount+'),
	('Alice in Borderland', 2020, NULL, 2, 'Netflix'),
	('Insecure', 2016, 2021, 5, 'Netflix'),
		
	('The Queen\`s Gambit', 2020, 2020, 1, 'Netflix'),
	('Unorthodox', 2020, 2020, 1, 'Netflix'),
	('The Fall of the House of Usher', 2023, 2023, 1, 'Netflix'),
	('Gaslit', 2023, 2023, 1, 'Starz'),
	('Dahmer - Monster: The Jeffrey Dahmer Story', 2023, NULL, 1, 'Netflix'),
	('Snabba Cash', 2021, 2022, 2, 'Netflix'),
	('Maid', 2021, 2021, 1, 'Netflix'),
	('Boo, Bitch', 2022, 2022, 1, 'Netflix'),
	('The Twelve', 2019, NULL, 2, 'Netflix'),
	('Superbro', 2018, 2021, 2, 'Netflix'),
	('The Carrie Diaries', 2013, 2014, 2, NULL);

-- all episodes for show_id = 40 name=The Carrie Diaries
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 		('Pilot', 40, 1, 1), 
		('Lie With Me', 40, 2, 1),
		('Read Before Use', 40, 3, 1),
		('Fright Night', 40, 4, 1),
		('Dangerous Territory', 40, 5, 1),
		('Endgame', 40, 6, 1),
		('Caught', 40, 7, 1),
		('Hush Hush', 40, 8, 1),
		('The Great Unknown', 40, 9, 1), 
		('The Long and Winding Road Not Taken', 40, 10, 1),
		('Identity Crisis', 40, 11, 1),
		('A First Time for Everything', 40, 12, 1),
		('Kiss Yesterdat Goodbye', 40, 13, 1),

		('Win Some, Lose Some', 40, 1, 2), 
		('Express Yourself', 40, 2, 2),
		('Strings Attached', 40, 3, 2),
		('Borderline', 40, 4, 2),
		('Too Close for Comfort', 40, 5, 2),
		('The Safety Dance', 40, 6, 2),
		('I Heard a Rumor', 40, 7, 2),
		('The Second Time Around', 40, 8, 2),
		('Under Pressure', 40, 9, 2), 
		('Date Expectations', 40, 10, 2),
		('Hungry Like the Wolf', 40, 11, 2),
		('This is the Time ', 40, 12, 2),
		('Run to You', 40, 13, 2);

-- all episodes for show_id = 39 name=Superwog
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 		('Pilot', 39, 1, 1), 
		('Breaking Dad', 39, 2, 1),
		('The Family Jewels', 39, 3, 1),
		('FThe Final Exam', 39, 4, 1),
		('The Formal', 39, 5, 1),
		('Power Trip', 39, 6, 1),
		('The Zombie Apocalypse', 39, 7, 1),

		('The P Plates', 39, 1, 2), 
		('The Lawsuit', 39, 2, 2),
		('The Magpie', 39, 3, 2),
		('Something Fishy', 39, 4, 2),
		('The Lump', 39, 5, 2),
		('Jump Ya', 39, 6, 2);

-- Episodes for show_id = 38 name='The Twelve'
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	('Episode #1.1', 38, 1, 1), 
	('Episode #1.2', 38, 2, 1),
	('Episode #1.3', 38, 3, 1),
	('Episode #1.4', 38, 4, 1),
	('Episode #1.5', 38, 5, 1),
	('Episode #1.6', 38, 6, 1),
	('Episode #1.7', 38, 7, 1),
	('Episode #1.8', 38, 8, 1);


-- Episodes for show_id = 37 name='Boo bitch'
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	('Life is a Bitch and Then You Die', 37, 1, 1), 
	('Resting Bitch Face', 37, 2, 1),
	('Payback is a Bitch', 37, 3, 1),
	('Bitch Slapped', 37, 4, 1),
	('Fake Bitch', 37, 5, 1),
	('Who Dat Bitch?', 37, 6, 1),
	('Bad Bitch', 37, 7, 1),
	('Bitch, Bye', 37, 8, 1);

 -- all episode for show_id = 36 name=Maid
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	('Dollar Store', 36, 1, 1), 
	('Ponies', 36, 2, 1),
	('Sea Glass', 36, 3, 1),
	('Cashmere', 36, 4, 1),
	('Thief', 36, 5, 1),
	('M', 36, 6, 1),
	('String Cheese', 36, 7, 1),
	('Bear Hunt', 36, 8, 1),
	('Sky Blue', 36, 9, 1),
	('Snaps', 36, 10, 1);


 -- all episode for show_id = 35 name=Snabba Cash
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	
	('Shuno is 12 Percent', 35, 1, 1),
	('Gonna Be 2 Rocks, Leya', 35, 2, 1),
	('Friends and Family', 35, 3, 1),
	('Was Never Bout the Cheese, Things Just Happened This Way', 35, 4, 1),
	('If You Play with Fire, You\'re Gonna Get Burned', 35, 5, 1),
	('Making Money Is Never Bad!', 35, 6, 1),

	('t Was Dag Hammarskjöld, Fam', 35, 1, 2), 
	('Are They Chatting or Selling?', 35, 2, 2),
	('We \' ll Try One with You', 35, 3, 2),
	('Waste Them All', 35, 4, 2),
	('Yeah, 100%. This Is the Last Last Time', 35, 5, 2),
	('I Know Who You Are', 35, 6, 2);

 -- all episode for show_id = 34  name= Dahmer - Monster: The Jeffrey Dahmer Story
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES

	('Bad Meat', 34, 1, 1),
	('Please Don \'t Go', 34, 2, 1),
	('Doin \' A Dahmer', 34, 3, 1),
	('The Good Boy Box', 34, 4, 1),
	('Blood On Their Hands', 34, 5, 1),
	('Silenced', 34, 6, 1),
	('Cassandra', 34, 7, 1),
	('Lionel', 34, 8, 1),
	('The Bogeyman', 34, 9, 1),
	('God of Forgiveness, God of Vengeance', 34, 10, 1);

 -- all episode for show_id = 33  name=Gaslit
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES	

	('Will', 33, 1, 1),
	('California', 33, 2, 1),
	('King George', 33, 3, 1),
	('Malum in Se', 33, 4, 1),
	('Honeymoon', 33, 5, 1),
	('Tuffy', 33, 6, 1),
	('Year of the Rat', 33, 7, 1),
	('Final Days', 33, 8, 1);

 -- all episode for show_id = 32  name=The Fall of the House of Usher
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES	

	('A Midnight Dreary', 32, 1, 1),
	('The Masque of the Red Death', 32, 2, 1),
	('Murder in the Rue Morgue', 32, 3, 1),
	('The Black Cat', 32, 4, 1),
	('The Tell-Tale Heart', 32, 5, 1),
	('Goldbug', 32, 6, 1),
	('The Pit and the Pendulum', 32, 7, 1),
	('The Raven', 32, 8, 1);

 -- all episode for show_id = 31  name=Unorthodox
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES	
	
	('Part 1', 31, 1, 1),
	('Part 2', 31, 2, 1),
	('Part 3', 31, 3, 1),
	('Part 4', 31, 4, 1);


-- all episode for show_id = 30  name=The Queen\`s Gambit
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES	
	
	('Openings', 30, 1, 1),
	('Exchanges', 30, 2, 1),
	('Doubled Pawns', 30, 3, 1),
	('Middle Game', 30, 4, 1),
	('Fork', 30, 5, 1),
	('Adjournment', 30, 6, 1),
	('End Game', 30, 7, 1);

-- all episode for show id=29, name=insecure
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            ('Insecure as Fuck', 29, 1, 1), 
		('Messy as F...', 29, 2, 1),
		('Racist as F...', 29, 3, 1),
		('Thirsty as F...', 29, 4, 1),
		('Shady as F...', 29, 5, 1),
		('Guilty as F...', 29, 6, 1),
		('Real as F...', 29, 7, 1),
		('Broken as F...', 29, 8, 1),

		('Hella Great', 29, 1, 2), 
		('Hella Questions', 29, 2, 2),
		('Hella Open', 29, 3, 2),
		('Hella LA', 29, 4, 2),
		('Hella Shook', 29, 5, 2),
		('Hello Blows', 29, 6, 2),
		('Hella Disrespectful', 29, 7, 2),
		('Hella Perspective', 29, 8, 2),
	
		('Better-Like', 29, 1, 3),
		('Familiar-Like', 29, 2, 3),
		('Backwards-Like', 29, 3, 3),
		('Fresh-Like', 29, 4, 3),
		('High-Like', 29, 5, 3),
		('Ready-Like', 29, 6, 3),
		('Obsessed-Like', 29, 7, 3),
		('Ghost-Like', 29, 8, 3),
	
		('Lowkey Feelin\' Myself', 29, 1, 4), 
		('Lowkey Distant', 29, 2, 4),
		('Lowkey Thankful', 29, 3, 4),
		('Lowkey Losin\' It', 29, 4, 4),
		('Lokwey Movin On', 29, 5, 4),
		('Lowkey Done', 29, 6, 4),
		('Lowkey Trippin', 29, 7, 4),
		('Lowkey Happy', 29, 8, 4),
		('Lowkey Trying', 29, 9, 4),
		('Lowkey Lost', 29, 10, 4),
	
		('Reunited, Okay?', 29, 2, 5),
		('Growth, Okay?', 29, 3, 5),
		('Pressure, Okay?', 29, 4, 5),
		('Faulty, Okay?', 29, 5, 5),
		('Episode 6', 29, 6, 5),
		('Episode 7', 29, 7, 5),
		('Episode 8', 29, 8, 5),
		('Episode 9', 29, 9, 5),
		('Episode 10', 29, 10, 5);

-- all episode for show id=28, name=Alice in Borderland
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            	('Episode 1', 28, 1, 1), 
		('Episode 2', 28, 2, 1),
		('Episode 3', 28, 3, 1),
		('Episode 4', 28, 4, 1),
		('Episode 5', 28, 5, 1),
		('Episode 6', 28, 6, 1),
		('Episode 7', 28, 7, 1),
		('Episode 8', 28, 8, 1),
	
            	('Episode 1', 28, 1, 2), 
		('Episode 2', 28, 2, 2),
		('Episode 3', 28, 3, 2),
		('Episode 4', 28, 4, 2),
		('Episode 5', 28, 5, 2),
		('Episode 6', 28, 6, 2),
		('Episode 7', 28, 7, 2),
		('Episode 8', 28, 8, 2);

-- all episode for show id=27, name=Twin Peaks
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	
            	('Pilot', 27, 1, 1), 
		('Traces to Nowhere', 27, 2, 1),
		('Zen, or the Skill to Catch a Killer', 27, 3, 1),
		('Rest in Pain', 27, 4, 1),
		('The One-Armed Man', 27, 5, 1),
		('Cooper Dreams', 27, 6, 1),
		('Realization Time', 27, 7, 1),
		('The Last Evening', 27, 8, 1),
	
            	('May the Giant Be with You', 27, 1, 2), 
		('Coma', 27, 2, 2),
		('The Man Behind the Glass', 27, 3, 2),
		('Laura Secret Diary', 27, 4, 2),
		('The Orchids Curse', 27, 5, 2),
		(' Demons', 27, 6, 2),
		(' Lonely Souls', 27, 7, 2),
		('Drive with a Dead Girl', 27, 8, 2);

-- all episode for show id=26, name=Gravity Falls
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 26, 1, 1);
	
-- all episode for show id=25, name=Better Call Saul
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	("Uno", 25, 1, 1);
	
-- all episode for show id=24 name=Stranger Things
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 24, 1, 1);
-- all episode for show id=23 name=Regular Show
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 23, 1, 1);
-- all episode for show id=22 name=The Big Bang Theory
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 22, 1, 1);
-- all episode for show id=21 name=Total Drama
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 21, 1, 1);
-- all episode for show id=20 name=Flashforward
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 20, 1, 1);
-- all episode for show id=19 name=Clone High
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
            	('Let us Try This Again', 19, 1, 1), 
		('Sleepover', 19, 2, 1),
		('Anxious Times at Clone High', 19, 3, 1),
		('The Crown: Joancoming: It is a Cleo Cleo Cleo Cleo World', 19, 4, 1),
		('Some Talking but Mostly Songs', 19, 5, 1),
		('Saved by the Knoll', 19, 6, 1),
		('Spring Broken', 19, 7, 1),
		('Sexy-Ed', 19, 8, 1),
		('For Your Consideration', 19, 9, 1),
		('Clone Alone', 19, 10, 1);

-- all episode for show id=18 name=My So Called Life
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 18, 1, 1);

-- all episode for show id=17 name=Sherlock
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES
	("A Study in Pink", 17, 1, 1);

-- all episode for show id=16 name=Undeclared
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 16, 1, 1);

-- all episode for show id=15 name=Police Squad
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 15, 1, 1);

-- all episode for show id=14 name=Freaks and Geeks
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 14, 1, 1);

-- all episode for show id=13 name=Band of Brothers
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 13, 1, 1);

-- all episode for show id=12 name=Almost Human
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 12, 1, 1);

-- all episode for show id=11 name=Firefly
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 11, 1, 1);
	
-- all episode for show id=10 name=The Tick
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 10, 1, 1);
-- all episode for show id=9 name=BattleStar Galactica
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 9, 1, 1);

-- all episode for show id=8 name=Game of Thrones
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 8, 1, 1);

-- all episode for show id=7 name=Fargo
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 7, 1, 1);

-- all episode for show id=6 name=The Shield
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 6, 1, 1);


-- all episode for show id=5 name=The Bear
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 5, 1, 1);


-- all episode for show id=4 name=Squid Game
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Episode 1', 4, 1, 1);


-- all episode for show id=3 name=Breaking Bad
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	("Crawl Space", 3, 11, 4),
	("End Times", 3, 12, 4),
	('Face Off', 3, 13, 4),
	('Ozymandias', 3, 14, 5),
	("Granite State", 3, 15, 5),
	("Felina", 3, 16, 5);

	
-- all episode for show id=2 name=Wednesday
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES ('Wednesday\'s Child is Full of Wow', 2, 1, 1), 
	('Woe Is The Loneliest Number', 2, 2, 1),
	('Friend or Woe', 2, 3, 1),
	('Woe What a Night', 2, 4, 1),
	('You Reap What You Woe', 2, 5, 1),
	('Quid Prop Woe', 2, 6, 1),
	('If You Don\'s Woe Me by Now', 2, 7, 1),
	('A Merder of Woe', 2, 8, 1);

-- all episode for show id=1 name=The Sopranos
INSERT INTO episode (episode_title, show_id, episode_number, season_number)
VALUES 
	('Pilot', 1, 1, 1),
	('46 Long', 1, 2, 1),
	('Denial, Anger, Acceptance', 1, 3, 1),
	('Episode 1', 1, 1, 2), 
	('Episode 2', 1, 2, 2),
	('Episode 3', 1, 3, 2),
	('Episode 4', 1, 4, 2),
	('Episode 5', 1, 5, 2),
	('Episode 6', 1, 6, 2),
	('Episode 7', 1, 7, 2),
	('Episode 8', 1, 8, 2),
	('Whitecaps', 1, 13, 4),
	('The Blue Comet', 1, 20, 6),
	('Made in America', 1, 21, 6);



CREATE TABLE user_episode (
	episode_id INT,
    user_id INT,
    user_rating INT,
    user_has_seen BOOLEAN DEFAULT FALSE,
    in_watchlist BOOLEAN DEFAULT FALSE,
    CONSTRAINT
		PRIMARY KEY (episode_id, user_id),
	CONSTRAINT
		FOREIGN KEY (episode_id)
		REFERENCES episode(episode_id),
	CONSTRAINT user_id
		FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

INSERT INTO user_episode VALUES
(1, 1, 9, TRUE, FALSE),
(1, 2, 10, TRUE, FALSE),
(2, 2, 0, FALSE, TRUE),
(2, 3, 8, FALSE, FALSE),
(3, 1, 3, TRUE, FALSE),
(3, 2, 0, FALSE, FALSE),
(3, 3, 0, FALSE, FALSE);

INSERT INTO user_episode (episode_id, user_id, user_rating, user_has_seen, in_watchlist) VALUES
(2, 1, 8, TRUE, TRUE), (13, 2, 5, FALSE, TRUE), (1, 3, 1, FALSE, FALSE), (15, 4, 9, TRUE, FALSE),
(9, 5, 6, TRUE, TRUE), (3, 6, 10, TRUE, FALSE), (4, 7, 7, TRUE, TRUE), (23, 8, 2, FALSE, TRUE), 
(6, 9, 4, FALSE, TRUE), (17, 10, 3, TRUE, TRUE), (10, 11, 1, TRUE, FALSE), (30, 12, 3, TRUE, FALSE), 
(22, 13, 5, TRUE, FALSE), (14, 14, 8, FALSE, FALSE), (19, 15, 6, TRUE, TRUE), (18, 16, 7, FALSE, TRUE),
(16, 17, 3, FALSE, FALSE), (11, 18, 4, TRUE, TRUE), (7, 19, 5, TRUE, FALSE ), (24, 20, 9, TRUE, FALSE),
(21, 21, 7, TRUE, FALSE), (25, 22, 3, FALSE, FALSE), (12, 23, 6, TRUE, TRUE), (8, 24, 5, FALSE, TRUE),
(5, 25, 4, FALSE, FALSE), (10, 26, 1, TRUE, FALSE), (27, 27, 8, FALSE, TRUE), (29, 28, 10, TRUE, FALSE),
(20, 29, 7, TRUE, TRUE), (25, 30, 1, FALSE, TRUE), (45, 31, 9, TRUE, FALSE), (42, 32, 5, TRUE, FALSE),
(35, 33, 8, FALSE, FALSE), (31, 34, 3, TRUE, TRUE), (40, 35, 4, FALSE, TRUE), (32, 36, 2, TRUE, FALSE),
(38, 37, 6, FALSE, TRUE), (39, 38, 10, TRUE, TRUE), (34, 39, 7, TRUE, FALSE), (41, 40, 3, TRUE, FALSE);

CREATE TABLE user_show (
    user_id INT,
	show_id INT,
    user_rating INT,
    user_finished BOOLEAN DEFAULT FALSE,
    in_watchlist BOOLEAN DEFAULT FALSE,
    CONSTRAINT
		PRIMARY KEY (show_id, user_id),
	CONSTRAINT
		FOREIGN KEY (show_id)
		REFERENCES shows(show_id),
	CONSTRAINT
		FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);


INSERT user_show (user_id, show_id, user_rating, user_finished, in_watchlist) VALUES
(1, 12, 6, TRUE, FALSE), (2, 8, 3, FALSE, TRUE), (3, 9, 7, TRUE, TRUE), (4, 25, 5, FALSE, TRUE), 
(5, 16, 2, FALSE, TRUE), (6, 30, 10, TRUE, TRUE), (7, 21, 8, TRUE, FALSE), (8, 1, 4, FALSE, TRUE), 
(9, 14, 7, TRUE, TRUE), (10, 33, 4, FALSE, TRUE ), (11, 15, 8, FALSE, TRUE), (12, 10, 3, TRUE, FALSE), 
(13, 35, 5, FALSE, TRUE), (14, 7, 9, TRUE, TRUE ), (15, 11, 5, TRUE, FALSE), (16, 23, 10, FALSE, TRUE),
(17, 18, 1, TRUE, TRUE), (18, 31, 2, FALSE, TRUE), (19, 29, 4, TRUE, TRUE), (20, 5, 9, FALSE, FALSE),

(21, 24, 5, TRUE, FALSE), (22, 38, 7, TRUE, TRUE), (23, 34, 8, TRUE, TRUE), (24, 17, 6, TRUE, FALSE),
(25, 6, 9, FALSE, TRUE), (26, 37, 5, TRUE, FALSE), (27, 4, 3, FALSE, TRUE), (28, 40, 10, TRUE, FALSE),
(29, 22, 10, TRUE, TRUE), (30, 3, 6, FALSE, TRUE), (31, 32, 2, FALSE, FALSE), (32, 2, 9, TRUE, TRUE),
(33, 13, 7, TRUE, TRUE), (34, 20, 8, FALSE, TRUE), (35, 28, 3, TRUE, FALSE), (36, 36, 5, TRUE, FALSE),
(37, 39, 1, FALSE, TRUE), (38, 27, 10, TRUE, TRUE), (39, 19, 6, TRUE, FALSE), (40, 26, 4, FALSE, TRUE);
