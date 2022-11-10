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
  password varchar(50) NOT NULL
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