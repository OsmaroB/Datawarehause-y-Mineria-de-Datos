create database Control_de_libros_OBK
go
use Control_de_libros_OBK
go

--PARTE I--
create table Autor(
	Codigo varchar(4) primary key not null,
	Nombres varchar(50) not null,
	Apellidos varchar(50) not null,
	Nacionalidad varchar(50) not null
)

create table Editorial(
	Codigo varchar(4) primary key not null,
	Nombres varchar(30) not null,
	Pais varchar(50) not null
)

create table Libro(
	Codigo varchar(4) primary key not null,
	Titulo varchar(100) not null,
	ISBN varchar(11) not null,
	descripcion varchar(150) not null,
	año_edicion int not null,
	Cod_editorial varchar(4),
	FOREIGN KEY (Cod_editorial) REFERENCES Editorial(Codigo)
)
create table Ejemplar(
	Cod_libro varchar(4) not null,
	Ubicacion varchar(50) not null,
	Estado varchar(11) not null,
	FOREIGN KEY (Cod_libro) REFERENCES Libro (Codigo)
)

create table Autor_Libro(
	Cod_libro varchar(4),
	Cod_Autor varchar(4),
	FOREIGN KEY (Cod_libro) REFERENCES Libro(Codigo),
	FOREIGN KEY (Cod_Autor) REFERENCES Autor(Codigo)
)

create table Autores_Espana(
	Codigo varchar(4) primary key not null,
	Nombres varchar(50) not null,
	Apellidos varchar(50) not null
)

INSERT INTO Editorial VALUES
('ED01','Thomson internacional', 'España'),
('ED02','Omega', 'México'),
('ED03','La fuente de la sabiduria', 'Colombia'),
('ED04','Siglo XV', 'España')

INSERT INTO Autor VALUES
('AU01','JOSE PEDRO','ALVARADO','ESPAÑOLA'),
('AU02','MARIA TERESA','RIVAS','MEXICANO'),
('AU03','JULIO CARLOS','FERNANDEZ','COLOMBIANO'),
('AU04','ALEXANDER','RODRIGUEZ','MEXICANO'),
('AU05','JUAN MANUEL','ARTIGA','COLOMBIA')

INSERT INTO Libro VALUES
('LB01','Metodologia de la programación','123-334-456','Sintaxis basica de la programación',2000,'ED02'),
('LB02','SQLServer 2005','345-678-076','Explicacion de las consultas sql',2005,'ED03'),
('LB03','Como programar en C/C++','153-567-345','Diferencias entre C/C++',1997,'ED02'),
('LB04','Aprender PHP en 30 días','234-345-987','Sintaxis PHP para crear páginas web dinamicas',2005,'ED01'),
('LB05','SQL Servel 2008','789-255-487','Administración de bases de datos',2008,'ED03'),
('LB06','CSS HTML','652-414-111','Creación de paginas web y hojas de estilo',2007,'ED01')

INSERT INTO Ejemplar VALUES
('LB01','Estante 1','Prestado'),
('LB02','Estante 2','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB04','Estante 4','Disponible'),
('LB02','Estante 2','Reservado'),
('LB04','Estante 4','Prestado'),
('LB01','Estante 1','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB01','Estante 1','Disponible'),
('LB05','Estante 5','Disponible'),
('LB06','Estante 5','Prestado'),
('LB06','Estante 5','Disponible')


INSERT INTO Autor_Libro VALUES
('LB01','AU02'),
('LB01','AU04'),
('LB02','AU01'),
('LB03','AU05'),
('LB03','AU03'),
('LB04','AU02'),
('LB04','AU04')



--PARTE II--

--a--
SELECT A.Nombres, A.Apellidos,A.Nacionalidad,L.Titulo FROM Autor_Libro AL 
INNER JOIN Libro L ON AL.Cod_libro = L.Codigo 
INNER JOIN Autor A ON A.Codigo = AL.Cod_Autor ORDER BY (A.Nombres) DESC
--b--
SELECT A.Nombres, A.Apellidos FROM Editorial E INNER JOIN Libro L ON E.Codigo = L.Cod_editorial 
INNER JOIN Autor_Libro AL ON L.Codigo = AL.Cod_libro 
INNER JOIN Autor A ON A.Codigo = AL.Cod_Autor WHERE E.Nombres = 'Omega'
--c--
SELECT l.Codigo, l.Titulo, COUNT(*) as Cantidad FROM Ejemplar e INNER JOIN Libro l on l.Codigo=e.Cod_libro GROUP BY l.Codigo,l.Titulo
--d--
SELECT L.Titulo,E.Estado FROM Ejemplar E INNER JOIN Libro L ON E.Cod_libro = L.Codigo WHERE E.Estado = 'Prestado';
--e--
SELECT * FROM Libro l WHERE l.año_edicion BETWEEN 2000 AND 2007
--f--
SELECT  e.Ubicacion, COUNT(*) as prestados FROM Ejemplar e INNER JOIN Libro l on l.Codigo=e.Cod_libro GROUP BY e.Ubicacion

--PARTE III--
INSERT INTO Autores_Espana SELECT a.Codigo,a.Nombres,a.Apellidos FROM Autor a WHERE a.Nacionalidad ='ESPAÑOLA'

