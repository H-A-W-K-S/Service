--
-- Fall 2022
--


--SQL Data Service for MergeSplit Game
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Game;


CREATE TABLE Game (
  ID SERIAL PRIMARY KEY, --Repeat IDs. Only uses a number from one to three.
  time timestamp
);

CREATE TABLE Player (
  ID SERIAL PRIMARY KEY,
  email varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  name varchar(50)
);

CREATE TABLE PlayerGame (
  gameID integer REFERENCES Game(ID), --Unique identifier for each game.
  PlayerID integer REFERENCES Player(ID),
  score integer
);

GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;

INSERT INTO Game VALUES (1, '2022-07-27 08:00:00');
INSERT INTO Game VALUES (2, '2022-08-28 13:20:00');
INSERT INTO Game VALUES (3, '2022-09-29 18:41:00');
INSERT INTO Game VALUES (4, '2022-10-30 20:55:00');

INSERT INTO Player VALUES (1, '39393@gmail.com', 'asdf1234', 'The Legend');
INSERT INTO Player VALUES (2, '45747@gmail.com', 'dptmqndpf4931', 'The Second');
INSERT INTO Player VALUES (3, '29578@gmail.com', 'fpwjsem1928', 'The Logic');

INSERT INTO PlayerGame VALUES (1, 1, 100);
INSERT INTO PlayerGame VALUES (2, 1, 98);
INSERT INTO PlayerGame VALUES (3, 1, 97);
INSERT INTO PlayerGame VALUES (4, 1, 100);

INSERT INTO PlayerGame VALUES (1, 2, 100);
INSERT INTO PlayerGame VALUES (2, 2, 98);
INSERT INTO PlayerGame VALUES (3, 2, 97);
INSERT INTO PlayerGame VALUES (4, 2, 100);

INSERT INTO PlayerGame VALUES (1, 3, 100);
INSERT INTO PlayerGame VALUES (2, 3, 98);
INSERT INTO PlayerGame VALUES (3, 3, 97);
INSERT INTO PlayerGame VALUES (4, 3, 100);
