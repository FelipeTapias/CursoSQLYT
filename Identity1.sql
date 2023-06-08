-- 1
IF OBJECT_ID('medicamentos') IS NOT NULL
	DROP TABLE medicamentos;
	
-- 2
CREATE TABLE medicamentos(
	codigo int identity,
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad int
);

-- 3
exec sp_columns medicamentos;

-- 4
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Sertal','Roche',5.2,100);

INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Buscapina','Roche',4.10,200);

INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Amoxidal 500','Bayer',15.60,100);

-- 5
SELECT * FROM medicamentos;

-- 6
INSERT INTO medicamentos(codigo, nombre, laboratorio, precio, cantidad)
			VALUES(1, 'Amoxidal 500','Bayer',15.60,100);

-- 7
SELECT * FROM medicamentos 
-- UPDATE medicamentos SET codigo = 1
WHERE laboratorio = 'Bayer';

-- 8
DELETE medicamentos WHERE codigo = '3';

-- 9
INSERT INTO medicamentos(nombre, laboratorio, precio, cantidad)
			VALUES('Amoxilina 500','Bayer',15.60,100);

-- 10
SELECT * FROM medicamentos;