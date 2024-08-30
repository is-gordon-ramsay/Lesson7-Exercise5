CREATE TABLE Director (
	directorID int NOT NULL PRIMARY KEY,
	firstname varchar(15) NOT NULL,
	lastname varchar(15) NOT NULL
);


CREATE TABLE Movie (
	movieID int NOT NULL PRIMARY KEY,
	title varChar(30) NOT NULL,
	year int NOT NULL,
	duration int NOT NULL,
	language varchar(10) NOT NULL,
	releaseDate date NOT NULL,
	genre varchar(15) NOT NULL,
	directorID int NOT NULL,
	FOREIGN KEY(directorID) REFERENCES Director(directorID)
);



CREATE TABLE Rating (
	ratingRef int AUTO_INCREMENT PRIMARY KEY,
	movieID int NOT NULL,
	averageRating float(2,1) NOT NULL,
	numberOfRatings int NOT NULL,
	FOREIGN KEY (movieID) REFERENCES Movie(movieID)
);


CREATE TABLE Actor (
	actorID int NOT NULL PRIMARY KEY,
	forename varchar(15) NOT NULL,
	surname varchar(20) NOT NULL
);


CREATE TABLE MovieCast (
	actorID int NOT NULL,
	movieID int NOT NULL,
	role varchar(25) NOT NULL,
	PRIMARY KEY (actorID, movieID),
	FOREIGN KEY (actorID) REFERENCES Actor(actorID),
	FOREIGN KEY (movieID) REFERENCES Movie(movieID)
);

INSERT INTO Director VALUES (501,"Alfred","Hotchcock");
INSERT INTO Director VALUES (502,"Jack","Clayton");
INSERT INTO Director VALUES (503,"David","Lean");
INSERT INTO Director VALUES (504,"Michael","Cimino");
INSERT INTO Director VALUES (505,"Milos","Forman");
INSERT INTO Director VALUES (506,"Ridley","Scott");
INSERT INTO Director VALUES (507,"Stanley","Kubrick");
INSERT INTO Director VALUES (508,"Bryan","Singer");
INSERT INTO Director VALUES (509,"Roman","Polanski");
INSERT INTO Director VALUES (510,"Paul","Thomas Anderson");
INSERT INTO Director VALUES (511,"Woody","Allen");
INSERT INTO Director VALUES (512,"Hayao","Miyazaki");
INSERT INTO Director VALUES (513,"Frank","Darabont");
INSERT INTO Director VALUES (514,"Sam","Mendes");
INSERT INTO Director VALUES (515,"James","Cameron");
INSERT INTO Director VALUES (516,"Gus","Van Sant");
INSERT INTO Director VALUES (517,"John","Boorman");
INSERT INTO Director VALUES (518,"Danny","Boyle");
INSERT INTO Director VALUES (519,"Christopher","Nolan");
INSERT INTO Director VALUES (520,"Richard","Kelly");
INSERT INTO Director VALUES (521,"Kevin","Spacey");
INSERT INTO Director VALUES (522,"Andrei","Tarkovsky");
INSERT INTO Director VALUES (523,"Peter","Jackson");
INSERT INTO Director VALUES (524,"Mel","Gibson");
INSERT INTO Director VALUES (525,"Akira","Kurosawa");
INSERT INTO Director VALUES (526,"Robert","Zemeckis");

INSERT INTO Movie VALUES (101,"Vertigo",1958,128,"English","1958-08-24","Mystery",501);
INSERT INTO Movie VALUES (102,"The Innocents",1961,100,"English","1961-11-24","Horror",502);
INSERT INTO Movie VALUES (103,"Lawrence of Arabia",1962,216,"English","1962-12-11","Adventure",503);
INSERT INTO Movie VALUES (104,"The Deer Hunter",1978,183,"English","1979-03-08","War",504);
INSERT INTO Movie VALUES (105,"Amadeus",1984,160,"English","1985-01-07","Drama",505);
INSERT INTO Movie VALUES (106,"Blade Runner",1982,117,"English","1982-09-09","Thriller",506);
INSERT INTO Movie VALUES (107,"Eyes Wide Shut",1999,159,"English","1999-09-03","Mystery",507);
INSERT INTO Movie VALUES (108,"The Usual Suspects",1995,106,"English","1995-08-25","Crime",508);
INSERT INTO Movie VALUES (109,"Chinatown",1974,130,"English","1974-08-09","Thriller",509);
INSERT INTO Movie VALUES (110,"Boogie Nights",1997,155,"English","1998-02-16","Comedy",510);
INSERT INTO Movie VALUES (111,"Annie Hall",1977,93,"English","2001-10-19","Comedy",511);
INSERT INTO Movie VALUES (112,"Princess Mononoke",1997,134,"Japanese","2001-10-19","Animation",512);
INSERT INTO Movie VALUES (113,"The Shawshank Redemption",1994,142,"English","1995-02-17","Crime",513);
INSERT INTO Movie VALUES (114,"American Beauty",1999,122,"English","1999-09-08","Romance",514);
INSERT INTO Movie VALUES (115,"Titanic", 1997,194,"English","1998-01-23","Romance",515);
INSERT INTO Movie VALUES (116,"Good Will Hunting",1997,126,"English","1998-06-03","Drama",516);
INSERT INTO Movie VALUES (117,"Deliverance",1972,109,"English","1982-10-05","Adventure",517);
INSERT INTO Movie VALUES (118,"Trainspotting",1996,94,"English","1996-02-23","Drama",518);
INSERT INTO Movie VALUES (119,"The Prestige",2006,130,"English","2006-11-10","Thriller",519);
INSERT INTO Movie VALUES (120,"Donnie Darko",2001,113,"English","2016-12-16","Mystery",520);
INSERT INTO Movie VALUES (121,"Slumdog Millionaire",2008,120,"English","2009-01-09","Drama",518);
INSERT INTO Movie VALUES (122,"Alien",1986,137,"English","1986-08-29","Action",515);
INSERT INTO Movie VALUES (123,"Beyond the Sea",2004,118,"English","2004-11-26","Music",521);
INSERT INTO Movie VALUES (124,"Avatar",2009,162,"English","2009-12-17","Science Fiction",515);
INSERT INTO Movie VALUES (125,"Braveheart",1995,178,"English","1995-09-08","Action",524);
INSERT INTO Movie VALUES (126,"Seven Samurai",1954,207,"Japanese","1954-04-26","Drama",525);
INSERT INTO Movie VALUES (127,"Spirited Away",2001,125,"Japanese","2003-09-12","Mystery",512);
INSERT INTO Movie VALUES (128,"Back to the Future",1985,116,"English","1985-12-04","Drama",526);

INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (101,8.4,263575);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (102,7.9,20207);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (103,8.3,202778);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (106,8.2,484746);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (124,7.3,394621);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (108,8.6,779489);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (109,6.9,227235);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (110,3.0,195961);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (111,8.1,203875);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (112,8.4,873261);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (114,7.0,862618);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (115,7.7,830095);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (116,4.0,642132);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (125,7.7,81328);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (118,7.5,580301);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (120,8.1,609451);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (121,8.0,667758);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (122,8.4,511613);
INSERT INTO Rating (movieID, averageRating, numberOfRatings) VALUES (123,6.7,13091);

INSERT INTO Actor VALUES (1001,"James","Stewart");
INSERT INTO Actor VALUES (1002,"Deborah","Kerr");
INSERT INTO Actor VALUES (1003,"Peter","O'Toole");
INSERT INTO Actor VALUES (1004,"Robert","De Niro");
INSERT INTO Actor VALUES (1005,"F. Murray","Abraham");
INSERT INTO Actor VALUES (1006,"Harrison","Ford");
INSERT INTO Actor VALUES (1007,"Nicole","Kidman");
INSERT INTO Actor VALUES (1008,"Stephen","Baldwin");
INSERT INTO Actor VALUES (1009,"Jack","Nicholson");
INSERT INTO Actor VALUES (1010,"Mark","Wahlberg");
INSERT INTO Actor VALUES (1011,"Woody","Allen");
INSERT INTO Actor VALUES (1012,"Claire","Danes");
INSERT INTO Actor VALUES (1013,"Tim","Robbins");
INSERT INTO Actor VALUES (1014,"Kevin","Spacey");
INSERT INTO Actor VALUES (1015,"Kate","Winslet");
INSERT INTO Actor VALUES (1016,"Robin","Williams");
INSERT INTO Actor VALUES (1017,"Jon","Voight");
INSERT INTO Actor VALUES (1018,"Ewan","McGregor");
INSERT INTO Actor VALUES (1019,"Christian","Bale");
INSERT INTO Actor VALUES (1020,"Maggie","Gyllenhaal");
INSERT INTO Actor VALUES (1021,"Dev","Patel");
INSERT INTO Actor VALUES (1022,"Sigourney","Weaver");
INSERT INTO Actor VALUES (1023,"David","Aston");
INSERT INTO Actor VALUES (1024,"Ali","Astin");

INSERT INTO MovieCast VALUES (1001,101,"John Scottie Ferguson");
INSERT INTO MovieCast VALUES (1002,102,"Miss Giddens");
INSERT INTO MovieCast VALUES (1003,103,"T.E. Lawrence");
INSERT INTO MovieCast VALUES (1004,104,"Michael");
INSERT INTO MovieCast VALUES (1005,105,"Antonio Salieri");
INSERT INTO MovieCast VALUES (1006,106,"Rick Deckard");
INSERT INTO MovieCast VALUES (1007,107,"Alice Harford");
INSERT INTO MovieCast VALUES (1008,108,"McManus");
INSERT INTO MovieCast VALUES (1010,110,"Eddie Adams");
INSERT INTO MovieCast VALUES (1011,111,"Alvy Singer");
INSERT INTO MovieCast VALUES (1012,112,"San");
INSERT INTO MovieCast VALUES (1013,113,"Andy Dufresne");
INSERT INTO MovieCast VALUES (1014,114,"Lester Burnham");
INSERT INTO MovieCast VALUES (1015,115,"Rose DeWitt Bukater");
INSERT INTO MovieCast VALUES (1016,116,"Sean Maguire");
INSERT INTO MovieCast VALUES (1017,117,"Ed");
INSERT INTO MovieCast VALUES (1018,118,"Renton");
INSERT INTO MovieCast VALUES (1020,120,"Elizabeth Darko");
INSERT INTO MovieCast VALUES (1021,121,"Older Jamal");
INSERT INTO MovieCast VALUES (1022,122,"Ripley");
INSERT INTO MovieCast VALUES (1014,123,"Bobby Darin");
INSERT INTO MovieCast VALUES (1009,109,"J.J. Gittes");
INSERT INTO MovieCast VALUES (1019,119,"Alfred Borden");
