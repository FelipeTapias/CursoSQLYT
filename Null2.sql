-- 1
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- 2
CREATE TABLE peliculas(
	codigo int not null,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion int
);

-- 3
EXEC sp_columns peliculas;

-- 4
INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(1,'Mision imposible','Tom Cruise',120);

INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(2,'Harry Potter y la piedra filosofal',null,180);

INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(3,'Harry Potter y la camara secreta','Daniel R.',null);

INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(0,'Mision imposible 2','',150);

INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(4,'','L. Di Caprio',220);

INSERT INTO peliculas(codigo, titulo, actor, duracion)
			VALUES(5,'Mujer bonita','R. Gere-J. Roberts',0);

-- 5
SELECT * FROM peliculas;

-- 6
INSERT INTO peliculas(codigo, titulo, actor, duracion)
		VALUES(null,'Mujer bonita','R. Gere-J. Roberts',190);

-- 7
SELECT * FROM peliculas WHERE actor IS NULL;
SELECT * FROM peliculas WHERE ACTOR = '';

-- 8
SELECT * 
-- UPDATE peliculas SET duracion = 120
FROM peliculas WHERE duracion IS NULL;

-- 9
SELECT * 
-- UPDATE peliculas SET actor = 'Desconocido'
FROM peliculas WHERE actor = '';

-- 10
SELECT * FROM peliculas;

-- 11
SELECT * 
-- DELETE
FROM peliculas WHERE titulo = '';