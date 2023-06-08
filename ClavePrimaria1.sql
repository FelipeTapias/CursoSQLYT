-- 1
IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;

-- 2
CREATE TABLE alumnos(
	legajo varchar(4) not null,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key(documento),
);

-- 3
EXEC sp_columns alumnos;

-- 4
INSERT INTO alumnos(legajo, documento, nombre, domicilio)
			VALUES('A233','22345345','Perez Mariana','Colon 234');

INSERT INTO alumnos(legajo, documento, nombre, domicilio)
			VALUES('A567','23545345','Morales Marcos','Avellaneda 348');

INSERT INTO alumnos(legajo, documento, nombre, domicilio)
			VALUES('A567','23545345','Morales Marcos','Avellaneda 348');

INSERT INTO alumnos(legajo, documento, nombre, domicilio)
		VALUES('A567',NULL,'Morales Marcos','Avellaneda 348');