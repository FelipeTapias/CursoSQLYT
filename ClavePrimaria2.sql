-- 1
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

-- 2
CREATE TABLE libros(
	codigo int not null,
	titulo varchar(40) not null,
	autor varchar(20),
	editorial varchar(15),
	primary key(codigo)
);

exec sp_columns libros;

-- 3
INSERT INTO libros(codigo, titulo, autor, editorial)
			VALUES(1, 'El aleph', 'Borges', 'Emece');

INSERT INTO libros(codigo, titulo, autor, editorial)
			VALUES(2, 'Martin Fierro', 'Jose Hernandez', 'Planeta');

INSERT INTO libros(codigo, titulo, autor, editorial)
			VALUES(3, 'Aprenda PHP', 'Mario Molina', 'Nuevo Siglo');

-- 4
INSERT INTO libros(codigo, titulo, autor, editorial)
			VALUES(1, 'Ya existe', 'Ya existe', 'Ya existe');

-- 5
INSERT INTO libros(codigo, titulo, autor, editorial)
			VALUES(null, 'Null', 'Null', 'Null');

-- 6
SELECT * FROM libros
-- UPDATE libros SET codigo = 1 
WHERE titulo = 'Martin Fierro';
