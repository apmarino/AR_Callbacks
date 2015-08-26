DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS sheep;
DROP TABLE IF EXISTS pigs;
DROP TABLE IF EXISTS cows;

CREATE TABLE people (
  id serial PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  sex VARCHAR,
  breed VARCHAR
);

CREATE TABLE sheep(
  id serial PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  sex VARCHAR,
  breed VARCHAR 
);

CREATE TABLE pigs(
  id serial PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  sex VARCHAR,
  breed VARCHAR
);

CREATE TABLE cows(
  id serial PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  sex VARCHAR,
  breed VARCHAR
);