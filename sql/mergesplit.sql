--SQL Data Service for MergeSplit Game
DROP TABLE IF EXISTS Player
DROP TABLE IF EXISTS GameType
DROP TABLE IF EXISTS GameInstance
DROP TABLE IF EXISTS PlayerScores

CREATE TABLE Player (
ID integer PRIMARY KEY
email varchar(50)
name varchar(50)
)

CREATE TABLE GameType (
ID integer --Repeat IDs. Only uses a number from one to three.
color varchar(50)
numSquares integer
difficulty integer
)

CREATE TABLE GameInstance (
  instanceID integer REFERENCES Player(ID)
  gameTypeRefID integer --ID from one to three to reference a specific game version.
  gameInstanceID integer PRIMARY KEY --Unique identifier for each game.
)

CREATE TABLE PlayerScores (
  playerID integer REFERENCES Player(ID)
  gameInstanceID1 REFERENCES GameInstance(instanceID)
  gameInstanceID2 REFERENCES GameInstance(instanceID)
  gameInstanceID3 REFERENCES GameInstance(instanceID)
  winStreak integer
  losingStreak integer
)

GRANT
SELECT
  ON Player TO PUBLIC;

GRANT
SELECT
  ON GameType TO PUBLIC;

GRANT
SELECT
  ON GameInstance TO PUBLIC;

GRANT
SELECT
  ON PlayerScores TO PUBLIC;

INSERT INTO Player(ID, email, name) VALUES (1, "39393@gmail.com", "The Legend");
INSERT INTO Player(ID, email, name) VALUES (1, "45747@gmail.com", "The Second");

INSERT INTO GameType(ID, color, numSquares, difficulty) VALUES (1, "", 50, 3);

INSERT INTO GameInstance(instanceID, gameTypeRefID, gameInstanceID) VALUES (1, 1, 1);
INSERT INTO GameInstance(instanceID, gameTypeRefID, gameInstanceID) VALUES (2, 1, 1);
INSERT INTO GameInstance(instanceID, gameTypeRefID, gameInstanceID) VALUES (3, 1, 1);


INSERT INTO PlayerScores(ID, gameInstanceID1, gameInstanceID2, gameInstanceID3, winStreak, losingStreak) VALUES (1, 1, , ,1,0); -- left empty for 2 and 3 as only 1 game inserted
INSERT INTO PlayerScores(ID, gameInstanceID1, gameInstanceID2, gameInstanceID3, winStreak, losingStreak) VALUES (2, 1, , ,1,0);
INSERT INTO PlayerScores(ID, gameInstanceID1, gameInstanceID2, gameInstanceID3, winStreak, losingStreak) VALUES (3, 1, , ,1,0);
