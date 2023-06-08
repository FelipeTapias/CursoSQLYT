IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;

-- 2
CREATE TABLE medicamentos(
	codigo int identity(10,1),
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad int
);

-- 3
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Sertal','Roche',5.2,100);

INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Buscapina','Roche',4.10,200);

INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Amoxidal 500','Bayer',15.60,100);

-- 4
SELECT * FROM medicamentos;

-- 5
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
			VALUES(13, 'Amoxidal 500','Bayer',15.60,100);

-- 6
SET IDENTITY_INSERT medicamentos on;

-- 7
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Amoxilina 500','Bayer',15.60,100);

-- 8
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
			VALUES(12, 'Repetida 500','Repetida',15.60,100);

SELECT * FROM medicamentos;

-- 9
SELECT IDENT_SEED('medicamentos') AS Seed;

-- 10
SELECT IDENT_INCR('medicamentos') AS Increment;

SELECT IDENT_CURRENT('medicamentos') AS 'Current';
