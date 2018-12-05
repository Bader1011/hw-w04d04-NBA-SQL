----------------------------------
-- Part 1

-- Drop DB if exists
--DROP DATABASE IF EXISTS nba_db;

-- Create DB nba_db
--CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Create table here

create table players (id serial, name text , age int , team text , games int , points int);
-- Insert player here

INSERT INTO players(name,age,team,games,points)  VALUES('Anderson Varejao',29,'CLE',25,271);
----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!


COPY players
  (name, age, team, games, points)
FROM '/Users/Reema/code/wdi/homework/w04d04/hw-w04d04-NBA-SQL/nba_season_2011-2012.csv'
    DELIMITER ',' CSV;
