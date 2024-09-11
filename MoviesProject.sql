
CREATE DATABASE movie_project;

USE movie_project;


CREATE TABLE Movies
(
movie_id INT PRIMARY KEY,
title VARCHAR(255),
release_year INT,
duration INT,
genre_id INT,
FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Genres (
genre_id INT PRIMARY KEY,
genre_name VARCHAR(50)
);

CREATE TABLE Actors(
actor_id INT Primary Key,
actor_name VARCHAR(100),
birthdate date
);

CREATE Table Movie_Actor(
movie_id INT,
actor_id INT,
PRIMARY KEY (movie_id, actor_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

CREATE TABLE Reviews (
review_id INT PRIMARY KEY,
movie_id INT,
user_id INT, 
rating DECIMAL(2,1), 
review_text TEXT,
review_date DATE,
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Users(
user_id INT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(100)
);

