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
  ID integer PRIMARY KEY
  gameInstanceID1 REFERENCES GameInstance(instanceID)
  gameInstanceID2 REFERENCES GameInstance(instanceID)
  gameInstanceID3 REFERENCES GameInstance(instanceID)
  winStreak integer
  losingStreak integer
)
