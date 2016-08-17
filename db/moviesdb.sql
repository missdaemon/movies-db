CREATE DATABASE moviesdb;
-- DROP DATABASE moviesdb; 
USE moviesdb;

CREATE TABLE Movies(
id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100),
mpaa VARCHAR(50),
synopsis TEXT
);

CREATE TABLE Showrooms(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
movie_id INT,
FOREIGN KEY (movie_id) REFERENCES Movies(id)
);


INSERT INTO Movies VALUES (160802, "Ghostbusters", "PG-13", "A paranormal researcher (Melissa McCarthy), a physicist (Kristen Wiig), a nuclear engineer (Kate McKinnon) and a subway worker (Leslie Jones) try to rid New York of ghosts that can possess humans."),
(NULL, "Suicide Squad", "PG-13", "Intelligence officer Amanda Waller (Viola Davis) assembles a team of dangerous, incarcerated supervillains (Will Smith, Margot Robbie) for a covert mission."),
(NULL, "Finding Dory", "PG", "With help from Nemo and Marlin (Albert Brooks), Dory (Ellen DeGeneres) the forgetful fish embarks on a quest to reunite with her mother (Diane Keaton) and father (Eugene Levy)."), 
(NULL, "Central Intelligence", "PG-13", "Bullied as a teen for being overweight, Bob Stone (Dwayne Johnson) shows up to his high school reunion looking fit and muscular. While there, he finds Calvin Joyner (Kevin Hart), a fast-talking accountant who misses his glory days as a popular athlete. Stone is now a lethal CIA agent who needs Calvin's number skills to help him save the compromised U.S. spy satellite system. Together, the former classmates encounter shootouts, espionage and double-crosses while trying to prevent worldwide chaos."),
(NULL, "Jason Bourne", "PG-13", "It's been 10 years since Jason Bourne (Matt Damon) walked away from the agency that trained him to become a deadly weapon. Hoping to draw him out of the shadows, CIA director Robert Dewey assigns hacker and counterinsurgency expert Heather Lee to find him. Lee suspects that former operative Nicky Parsons is also looking for him. As she begins tracking the duo, Bourne finds himself back in action battling a sinister network that utilizes terror and technology to maintain unchecked power."),
(NULL, "Stark Trek Beyond", "PG-13", "Stranded on a hostile planet, Capt. Kirk (Chris Pine), Spock (Zachary Quinto) and the rest of the Enterprise crew face an alien threat."),
(NULL, "Ice Age: Collision Course", "PG", "Manny (Ray Romano), Diego (Denis Leary), Sid (John Leguizamo) and the rest of the herd travel to exotic new lands after Scrat accidentally sets off a series of cosmic events from outer space."),
(NULL, "The Secret Life of Pets", "PG","From the humans behind Despicable Me. Ever wonder what your pets do when you're not home?"),
(NULL, "Lights Out", "PG-13", "When Rebecca (Teresa Palmer) left home, she thought that her childhood fears were behind her. As a young girl growing up, she was never really sure of what was real when the lights went out at night. Now, her little brother Martin (Gabriel Bateman) is experiencing the same unexplained and terrifying events that jeopardized her safety and sanity. Holding a mysterious attachment to their mother (Maria Bello), a supernatural entity has returned with a vengeance to torment the entire family."),
(NULL, "Nerve",  "PG-13", " Partnered with a mysterious stranger (Dave Franco), a high school senior (Emma Roberts) plays a popular online game that starts to take a sinister turn."),
(NULL, "Nine Lives", "PG", "Tom Brand (Kevin Spacey) is a billionaire whose workaholic lifestyle takes him away from his loving wife Lara and adorable daughter Rebecca. Needing a present for Rebecca's 11th birthday, Brand buys a seemingly harmless cat from a mysterious pet store. Suddenly, a bizarre turn of events traps poor Tom inside the animal's body. The owner of the business tells him that he has one week to reconnect with his family, or live out the rest of his days as a cute and furry feline named Mr. Fuzzypants."),
(NULL, "Bad Moms", "R", "Young Amy (Mila Kunis) has a great husband, overachieving children, beautiful home and successful career. Unfortunately, she's also overworked, exhausted and ready to snap. Fed up, she joins forces with two other stressed-out mothers (Kristen Bell, Kathryn Hahn) to get away from daily life and conventional responsibilities. As the gals go wild with their newfound freedom, they set themselves up for the ultimate showdown with queen bee Gwendolyn and her clique of seemingly perfect moms."),
(NULL, "Pete’s Dragon", "PG", "Mr. Meacham (Robert Redford), a woodcarver, delights local children with stories of a mysterious dragon that lives deep in the woods of the Pacific Northwest. His daughter Grace (Bryce Dallas Howard) believes these are just tall tales, until she meets Pete (Oakes Fegley), a 10-year-old orphan who says he lives in the woods with a giant, friendly dragon. With help from a young girl named Natalie (Oona Laurence), Grace sets out to investigate if this fantastic claim can be true."),
(NULL, "THE PURGE: ELECTION YEAR", "R", "As a young girl, Sen. Charlene Roan survived the annual night of lawlessness that took the lives of her family members. As a presidential candidate, Roan is determined to end the yearly tradition of blood lust once and for all. When her opponents hatch a deadly scheme, the senator finds herself trapped on the streets of Washington, D.C., just as the latest Purge gets underway. Now, it's up to Leo Barnes (Frank Grillo), her head of security, to keep her alive during the next 12 hours of mayhem."),
(NULL, "Café Society", "PG-13", "A young Bronx native moves to Hollywood where he falls in love with the secretary of his powerful uncle. After returning to New York he is swept up in the vibrant world of high society nightclub life."),
(NULL, "HELL OR HIGH WATER", "R", "A divorced dad and his ex-con brother resort to a desperate scheme in order to save their family's farm in West Texas.");

-- 1. Mostrar el nombre de todas las películas.
SELECT id AS ID_PELICULA, name AS MOVIE FROM Movies;

-- 2. Mostrar las distintas calificaciones de edad que existen;
SELECT id AS ID_PELICULA, name AS MOVIE, mpaa AS RATE 
FROM Movies 
ORDER BY mpaa ASC;

SELECT mpaa AS RATE  
FROM Movies 
ORDER BY mpaa ASC;

-- 3. Mostrar todas las películas que no han sido calificadas.
INSERT INTO Movies VALUES 
(NULL, "A Tale of Love and Darkness", "UNRATED", "A young boy's journey to become a writer; growing up in Jerusalem.");

INSERT INTO Movies VALUES
(NULL, "Sausage Party", "UNRATED", "When Frank (Seth Rogen) the sausage learns that he will eventually become a meal, he tries to warn his supermarket pals about their similar fate.");


SELECT id as ID_PELICULA, name as MOVIE, mpaa as RATE 
FROM Movies
WHERE mpaa = "UNRATED";

-- 4. Mostrar todas las salas que no proyectan película.

-- 5. Mostrar información de todas las salas, y si proyecta alguna película en la sala, mostrar información de la película.
-- Also a SP
-- 6. Mostrar los nombres de las películas que no se proyectan en ninguna sala.

-- 7. Añadir una película para mayores de 7 años.
INSERT INTO Peliculas VALUES(NULL, "Batman v. Superman","PG-13", "");

-- 8. Eliminar todas las salas que proyectan películas recomendada para todo público.

