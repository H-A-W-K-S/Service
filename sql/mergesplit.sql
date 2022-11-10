--
-- Fall 2022
--


--SQL Data Service for MergeSplit Game
DROP TABLE IF EXISTS PlayerGame
DROP TABLE IF EXISTS Player
DROP TABLE IF EXISTS Game


CREATE TABLE Player (
  ID integer PRIMARY KEY,
  email varchar(50) NOT NULL,
  name varchar(50)
)

CREATE TABLE Game (
  ID integer, --Repeat IDs. Only uses a number from one to three.
  time timestamp
)

CREATE TABLE PlayerGame (
  gameInstanceID integer REFERENCES Game(ID), --Unique identifier for each game.
  PlayerID integer REFERENCES Player(ID),
  score integer
)

GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;

INSERT INTO Player VALUES (1, "39393@gmail.com", "The Legend");
INSERT INTO Player VALUES (2, "45747@gmail.com", "The Second");
INSERT INTO Player VALUES (3, "29578@gmail.com", "The Logic");

INSERT INTO Game VALUES (1, '2022-07-27 08:00:00');
INSERT INTO Game VALUES (2, '2022-08-28 13:20:00');
INSERT INTO Game VALUES (3, '2022-09-29 18:41:00');
INSERT INTO Game VALUES (4, '2022-10-30 20:55:00');

INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (1, 1, 100);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (2, 1, 98);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (3, 1, 97);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (4, 1, 100);

INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (1, 2, 100);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (2, 2, 98);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (3, 2, 97);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (4, 2, 100);

INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (1, 3, 100);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (2, 3, 98);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (3, 3, 97);
INSERT INTO PlayerGame(instanceID, gameTypeRefID, gameInstanceID) VALUES (4, 3, 100);