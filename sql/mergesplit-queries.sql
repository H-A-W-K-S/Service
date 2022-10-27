--
-- Sample queries for mergesplit database
--
-- Haim Hong, Fall, 2022
-- 
--


-- Get the list of players

SELECT *
    FROM PLAYER;

-- Get the GameTypes
SELECT *
    FROM GameInstance;

-- Get the difficulties of game in descending order
SELECT gameTypeRefID
    FROM GameInstance
    ORDER BY gameTypeRefID DESC;

-- Get the highest winstreaks
SELECT PlayerScores.winStreak
    FROM PlayerScores, Player
    WHERE PlayerScores.playerID = Player.ID
    ORDER BY winStreak DESC
    LIMIT 1;

