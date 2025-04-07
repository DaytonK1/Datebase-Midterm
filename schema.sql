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

-- Positions Table
CREATE TABLE positions (
    position_id VARCHAR(5) PRIMARY KEY,
    position_name VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Players Table
CREATE TABLE players (
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    position_id VARCHAR(5) NOT NULL,
    jersey_number INT,
    team_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (last_name, first_name),
    FOREIGN KEY (team_id) REFERENCES teams(team_id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

-- Season Stats Table
CREATE TABLE season_stats (
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    season_year INT NOT NULL,
    PRIMARY KEY (last_name, first_name, season_year),
    completions INT DEFAULT 0,
    attempts INT DEFAULT 0,
    completion_percentage DECIMAL(4,1) DEFAULT 0.0,
    passing_yards INT DEFAULT 0,
    passing_touchdowns INT DEFAULT 0,
    interceptions INT DEFAULT 0,
    passer_rating DECIMAL(4,1) DEFAULT 0.0,
    rushing_yards INT DEFAULT 0,
    rushing_touchdowns INT DEFAULT 0,
    receptions INT DEFAULT 0,
    receiving_yards INT DEFAULT 0,
    receiving_touchdowns INT DEFAULT 0,
    tackles INT DEFAULT 0,
    sacks DECIMAL(3,1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (last_name, first_name) REFERENCES players(last_name, first_name)
);
