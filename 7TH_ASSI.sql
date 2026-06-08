
CREATE DATABASE db_movies;
GO
USE db_movies;
GO

/*Create the Parent Table (tbl_directors)*/
CREATE TABLE tbl_directors (
    director_id INT PRIMARY KEY NOT NULL IDENTITY(1, 1), -- Unique Primary Key
    director_name VARCHAR(100) NOT NULL,                 -- Additional Column 1
    director_country VARCHAR(50) NOT NULL                -- Additional Column 2
);

/*Create the Child Table (tbl_movies)*/
CREATE TABLE tbl_movies (
    movie_id INT PRIMARY KEY NOT NULL IDENTITY(100, 1),   -- Unique Primary Key (starts at 100)
    movie_title VARCHAR(100) NOT NULL,                    -- Additional Column 1
    movie_genre VARCHAR(50) NOT NULL,                     -- Additional Column 2
    movie_director_id INT NOT NULL,                       -- Foreign Key column
    CONSTRAINT fk_director_id FOREIGN KEY (movie_director_id) 
        REFERENCES tbl_directors(director_id) 
        ON UPDATE CASCADE ON DELETE CASCADE
);

/* Add Values to tbl_directors (5 rows)*/
INSERT INTO tbl_directors (director_name, director_country)
VALUES 
    ('Christopher Nolan', 'United Kingdom'), 
    ('Steven Spielberg', 'United States'),   
    ('Martin Scorsese', 'United States'),    
    ('Greta Gerwig', 'United States'),       
    ('Denis Villeneuve', 'Canada');          

/*Add Values to tbl_movies (5 rows linked to the parent IDs)*/
INSERT INTO tbl_movies (movie_title, movie_genre, movie_director_id)
VALUES 
    ('Inception', 'Sci-Fi', 1),          -- Linked to Nolan
    ('Interstellar', 'Sci-Fi', 1),       -- Linked to Nolan (Shares a common attribute/director with Inception!)
    ('Jurassic Park', 'Adventure', 2),   -- Linked to Spielberg
    ('Goodfellas', 'Crime', 3),          -- Linked to Scorsese
    ('Dune', 'Sci-Fi', 5);               -- Linked to Villeneuve

/* Query data from both tables using an INNER JOIN*/
-- This retrieves movies that share the common attribute of being directed by Christopher Nolan
SELECT 
    d.director_name AS "Director Name",
    m.movie_title AS "Movie Title",
    m.movie_genre AS "Genre"
FROM tbl_movies m
INNER JOIN tbl_directors d ON m.movie_director_id = d.director_id
WHERE d.director_name = 'Christopher Nolan';
