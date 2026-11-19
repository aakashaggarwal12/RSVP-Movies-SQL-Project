create database rsvp;
use rsvp;
create table movies (movie_id int primary key,
title varchar(100),
release_year year,
genre varchar(50),
language varchar (30),
budget decimal(10,2),
revenue decimal(10,2));

-- director table 
create table directors(director_id int primary key ,
name varchar(100));


-- Movie_Director Table
CREATE TABLE Movie_Director (
    movie_id INT,
    director_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

-- Insert Movies
INSERT INTO Movies VALUES
(1, 'Uri: The Surgical Strike', 2019, 'Action', 'Hindi', 25.00,
350.00),
(2, 'Kedarnath', 2018, 'Romance', 'Hindi', 40.00, 100.00),
(3, 'Love Per Square Foot', 2018, 'Comedy', 'Hindi', 20.00, 45.00);
-- Insert Directors
INSERT INTO Directors VALUES
(1, 'Aditya Dhar'),
(2, 'Abhishek Kapoor'),
(3, 'Anand Tiwari');
-- Insert Movie_Director
INSERT INTO Movie_Director VALUES
(1, 1),

(2, 2),
(3, 3);

-- Ratings Table
CREATE TABLE Ratings (
movie_id INT,
rating DECIMAL(3,1),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);


-- Insert Ratings
INSERT INTO Ratings VALUES
(1, 8.3),
(2, 6.9),
(3, 7.3);



use rsvp;

show tables;

select * from directors;
select * from movie_director;
select * from movies;
select * from ratings;


select title as movie,release_year from movies where release_year >2017;

select title, max(revenue) from movies group by title limit 1;

SELECT m.title, r.rating
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
WHERE r.rating > 7;

SELECT d.name AS Director, m.title AS Movie FROM Directors d
JOIN Movie_Director md ON d.director_id = md.director_id
JOIN Movies m ON md.movie_id = m.movie_id;

select title,(revenue-budget) as total_profit from movies; 

SELECT m.genre, AVG(r.rating) AS avg_rating FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
GROUP BY m.genre;

SELECT m.title, r.rating
FROM Movies m
JOIN Ratings r ON m.movie_id = r.movie_id
ORDER BY r.rating DESC
LIMIT 3;