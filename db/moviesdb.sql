CREATE DATABASE moviesdb;
-- DROP DATABASE moviesdb; 
USE moviesdb;

-- DROP TABLE Salas; 

CREATE TABLE Salas(
idSalas INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(100),
Pelicula INT,
idPeliculas INT,
FOREIGN KEY (idPeliculas) REFERENCES Peliculas(idPeliculas)
); 

-- DROP TABLE Peliculas;

CREATE TABLE Peliculas(
idPeliculas INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(100),
clfEdad VARCHAR(50)
);

INSERT INTO Peliculas VALUES (160802, "Ghostbusters", "PG-13"),
(NULL, "Suicide Squad", "PG-13"),
(NULL, "Finding Dory", "PG"), 
(NULL, "Now You See Me 2", "PG-13"),
(NULL, "Jason Bourne", "PG-13"),
(NULL, "Stark Trek Beyond", "PG-13"),
(NULL, "Ice Age: Collision Course", "PG"),
(NULL, "The Secret Life of Pets", "PG"),
(NULL, "Lights Out", "PG-13"),
(NULL, "Nerve",  "PG-13"),
(NULL, "Edge of Winter", "R"),
(NULL, "Ghost Team", "PG-13"),
(NULL, "Operation Chromite", "R"),
(NULL, "Anthropoid", "R"),
(NULL, "Nine Lives", "PG"),
(NULL, "Bad Moms", "R"),
(NULL, "Pete’s Dragon", "PG");

-- 1. Mostrar el nombre de todas las películas.
SELECT * FROM  Peliculas;
SELECT Nombre as MOVIE FROM Peliculas;

-- 2. Mostrar las distintas calificaciones de edad que existen.
SELECT clfEdad as RATE FROM Peliculas 
ORDER BY clfEdad ASC;

-- 3. Mostrar todas las películas que no han sido calificadas.
INSERT INTO Peliculas VALUES (NULL, "Wonder Woman", NULL);
SELECT idPeliculas, Nombre FROM Peliculas WHERE clfEdad = NULL;
SELECT * FROM Peliculas WHERE clfEdad = "R"; 

-- 4. Mostrar todas las salas que no proyectan película.

-- 5. Mostrar información de todas las salas, y si proyecta alguna película en la sala, mostrar información de la película.
-- Also a SP
-- 6. Mostrar los nombres de las películas que no se proyectan en ninguna sala.

-- 7. Añadir una película para mayores de 7 años.
INSERT INTO Peliculas VALUES(NULL, "Batman v. Superman","PG-13");

-- 8. Eliminar todas las salas que proyectan películas recomendada para todo público.

