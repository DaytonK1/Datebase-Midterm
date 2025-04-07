USE nfl_stats;

-- Insert AFC Teams
-- AFC East
INSERT INTO teams (team_name, city, division, conference) VALUES
('Bills', 'Buffalo', 'East', 'AFC'),
('Dolphins', 'Miami', 'East', 'AFC'),
('Patriots', 'New England', 'East', 'AFC'),
('Jets', 'New York', 'East', 'AFC');

-- AFC North
INSERT INTO teams (team_name, city, division, conference) VALUES
('Ravens', 'Baltimore', 'North', 'AFC'),
('Bengals', 'Cincinnati', 'North', 'AFC'),
('Browns', 'Cleveland', 'North', 'AFC'),
('Steelers', 'Pittsburgh', 'North', 'AFC');

-- AFC South
INSERT INTO teams (team_name, city, division, conference) VALUES
('Texans', 'Houston', 'South', 'AFC'),
('Colts', 'Indianapolis', 'South', 'AFC'),
('Jaguars', 'Jacksonville', 'South', 'AFC'),
('Titans', 'Tennessee', 'South', 'AFC');

-- AFC West
INSERT INTO teams (team_name, city, division, conference) VALUES
('Broncos', 'Denver', 'West', 'AFC'),
('Chiefs', 'Kansas City', 'West', 'AFC'),
('Raiders', 'Las Vegas', 'West', 'AFC'),
('Chargers', 'Los Angeles', 'West', 'AFC');

-- Insert NFC Teams
-- NFC East
INSERT INTO teams (team_name, city, division, conference) VALUES
('Cowboys', 'Dallas', 'East', 'NFC'),
('Giants', 'New York', 'East', 'NFC'),
('Eagles', 'Philadelphia', 'East', 'NFC'),
('Commanders', 'Washington', 'East', 'NFC');

-- NFC North
INSERT INTO teams (team_name, city, division, conference) VALUES
('Bears', 'Chicago', 'North', 'NFC'),
('Lions', 'Detroit', 'North', 'NFC'),
('Packers', 'Green Bay', 'North', 'NFC'),
('Vikings', 'Minnesota', 'North', 'NFC');

-- NFC South
INSERT INTO teams (team_name, city, division, conference) VALUES
('Falcons', 'Atlanta', 'South', 'NFC'),
('Panthers', 'Carolina', 'South', 'NFC'),
('Saints', 'New Orleans', 'South', 'NFC'),
('Buccaneers', 'Tampa Bay', 'South', 'NFC');

-- NFC West
INSERT INTO teams (team_name, city, division, conference) VALUES
('Cardinals', 'Arizona', 'West', 'NFC'),
('Rams', 'Los Angeles', 'West', 'NFC'),
('49ers', 'San Francisco', 'West', 'NFC'),
('Seahawks', 'Seattle', 'West', 'NFC');
