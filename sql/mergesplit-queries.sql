--
-- Sample queries for mergesplit database
--
-- Haim Hong, Fall, 2022
-- 
--


-- Get the name and score 
SELECT Player.ID, name, score
FROM Player, Game, PlayerGame
WHERE Player.ID = PlayerGame.PlayerID
AND Game.ID = PlayerGame.gameInstanceID
ORDER BY score DESC;

-- Get player names
SELECT name
FROM Player;

-- get login information if both mathces
SELECT email, password
FROM Player
WHERE Player.password = "asdf1234"
AND Player.email = "39393@gmail.com";

