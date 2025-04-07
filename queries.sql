-- Sample queries for 2024 NFL Stats Database

-- Get player's basic information
SELECT p.first_name, p.last_name, p.position, t.team_name
FROM players p
JOIN teams t ON p.team_id = t.team_id;

-- Get total passing yards for a player (2024 season)
SELECT p.first_name, p.last_name, SUM(ps.passing_yards) as total_passing_yards
FROM player_stats ps
JOIN players p ON ps.player_id = p.player_id
JOIN games g ON ps.game_id = g.game_id
WHERE g.game_type = 'Regular'
GROUP BY p.player_id;

-- Get team's win/loss record (2024 season)
SELECT 
    t.team_name,
    COUNT(CASE WHEN 
        (g.home_team_id = t.team_id AND g.home_score > g.away_score) OR 
        (g.away_team_id = t.team_id AND g.away_score > g.home_score) 
    THEN 1 END) as wins,
    COUNT(CASE WHEN 
        (g.home_team_id = t.team_id AND g.home_score < g.away_score) OR 
        (g.away_team_id = t.team_id AND g.away_score < g.home_score) 
    THEN 1 END) as losses
FROM teams t
LEFT JOIN games g ON (t.team_id = g.home_team_id OR t.team_id = g.away_team_id)
    AND g.game_type = 'Regular'
GROUP BY t.team_id;

-- Get top 10 rushers by yards (2024 season)
SELECT p.first_name, p.last_name, t.team_name, SUM(ps.rushing_yards) as total_rushing_yards
FROM player_stats ps
JOIN players p ON ps.player_id = p.player_id
JOIN teams t ON p.team_id = t.team_id
JOIN games g ON ps.game_id = g.game_id
WHERE g.game_type = 'Regular'
GROUP BY p.player_id
ORDER BY total_rushing_yards DESC
LIMIT 10;
