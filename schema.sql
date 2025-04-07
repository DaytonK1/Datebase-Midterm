-- Create NFL Stats Database
CREATE DATABASE IF NOT EXISTS nfl_stats;
USE nfl_stats;

-- Teams Table
CREATE TABLE teams (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    division VARCHAR(20) NOT NULL,
    conference VARCHAR(3) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Players Table
CREATE TABLE players (
    player_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(5) NOT NULL,
    jersey_number INT,
    team_id INT,
    birth_date DATE,
    height VARCHAR(10),
    weight INT,
    college VARCHAR(100),
    draft_year INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Games Table (2024 Season)
CREATE TABLE games (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    home_team_id INT,
    away_team_id INT,
    game_date DATE NOT NULL,
    game_type ENUM('Regular', 'Postseason') NOT NULL,
    home_score INT,
    away_score INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

-- Player Stats Table
CREATE TABLE player_stats (
    stat_id INT PRIMARY KEY AUTO_INCREMENT,
    player_id INT,
    game_id INT,
    passing_yards INT DEFAULT 0,
    passing_touchdowns INT DEFAULT 0,
    interceptions INT DEFAULT 0,
    rushing_yards INT DEFAULT 0,
    rushing_touchdowns INT DEFAULT 0,
    receptions INT DEFAULT 0,
    receiving_yards INT DEFAULT 0,
    receiving_touchdowns INT DEFAULT 0,
    tackles INT DEFAULT 0,
    sacks DECIMAL(3,1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(player_id),
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);
