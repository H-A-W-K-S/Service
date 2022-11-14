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

INSERT INTO Player VALUES (1, '39393@gmail.com', 'asdf1234', 'The Legend');
INSERT INTO Player VALUES (2, '45747@gmail.com', 'dptmqndpf4931', 'The Second');
INSERT INTO Player VALUES (3, '29578@gmail.com', 'fpwjsem1928', 'Vitamin D');
INSERT INTO Player VALUES (4, '19747@gmail.com', 'llil081h', 'Irregular');
INSERT INTO Player VALUES (5, '19378768@gmail.com', '0mzn978n1', 'Guardian');
INSERT INTO Player VALUES (6, '19jc@gmail.com', 'alziun18', '144hz monitor');
INSERT INTO Player VALUES (7, '91n3nu@gmail.com', '019ndd97b2', 'Chrome Extention');
INSERT INTO Player VALUES (8, '99887123@gmail.com', 'okkmnn0091m', 'RTX 4090');
INSERT INTO Player VALUES (9, '1872756@gmail.com', 'an189ucbn', 'Stackoverflow');
INSERT INTO Player VALUES (10, '1918662@gmail.com', '0zuibneni18', 'Microwave');

INSERT INTO PlayerGame VALUES (1, 1, 100);
INSERT INTO PlayerGame VALUES (2, 1, 98);

INSERT INTO PlayerGame VALUES (1, 2, 100);
INSERT INTO PlayerGame VALUES (2, 2, 98);

INSERT INTO PlayerGame VALUES (1, 3, 89);
INSERT INTO PlayerGame VALUES (2, 3, 98);

INSERT INTO PlayerGame VALUES (1, 4, 95);
INSERT INTO PlayerGame VALUES (2, 4, 98);

INSERT INTO PlayerGame VALUES (1, 5, 99);
INSERT INTO PlayerGame VALUES (2, 5, 100);

INSERT INTO PlayerGame VALUES (1, 6, 98);
INSERT INTO PlayerGame VALUES (2, 6, 95);

INSERT INTO PlayerGame VALUES (1, 7, 100);
INSERT INTO PlayerGame VALUES (2, 7, 98);

INSERT INTO PlayerGame VALUES (1, 8, 87);
INSERT INTO PlayerGame VALUES (2, 8, 100);

INSERT INTO PlayerGame VALUES (1, 9, 100);
INSERT INTO PlayerGame VALUES (2, 9, 100);

INSERT INTO PlayerGame VALUES (1, 10, 99);
INSERT INTO PlayerGame VALUES (2, 10, 96);