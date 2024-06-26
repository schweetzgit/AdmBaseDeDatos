create database escuelaDeportivaDeAltoRendimiento;
use escuelaDeportivaDeAltoRendimiento;

create table deporte (
	idDeporte int,
	nombre VARCHAR(50),/*Enum('Fútbol', 'Baloncesto', 'Natación','voleibol'),*/
    horario time
);

create table alumno (
	matricula int ,
    nombre varchar(20),
    apellidoPaterno varchar(20),
    apellidoMaterno varchar (20),
    telefono char(10),
    correoElectronico VARCHAR(50),
    fechaNacimiento date,
    CURP CHAR(18),
    idCategoria int,
    idDeporte int,
    idTitulo int
   
);

create table cat_titulos (
	idTitulo INT,
    nombreTitulo VARCHAR(30)
);

create table cat_categorias (
	idCategoria INT,
    nombreCategoria VARCHAR(30)
);


create table entrenadores (
	matricula int ,
    nombre VARCHAR(20),
    apellidoPaterno VARCHAR(20),
    apellidoMaterno VARCHAR(20),
    telefono CHAR(10),
    correoElectronico VARCHAR(50),
    fechaNacimiento DATE,
    CURP CHAR(18),
    idCategoria INT,
    idDeporte INT
);

create table competicion (
	idCompeticion INT,
    /*idDeporte Enum('Fútbol', 'Baloncesto', 'Natación','voleibol'),*/
    idDeporte INT,
    idCategoria INT,
    idTitulo INT
);

INSERT INTO deporte (idDeporte, nombre, horario)
VALUES(1,'Fútbol', '09:00:00'),
(2,'Baloncesto', '10:30:00'),(3,'Natación', '11:15:00'),
(4,'Voleibol', '14:00:00'),(5,'Fútbol', '15:30:00'),
(6,'Baloncesto', '17:00:00'),(7,'Natación', '18:45:00'),
(8,'Voleibol', '20:30:00'),(9,'Fútbol', '09:30:00'),
(10,'Baloncesto', '11:00:00'),(11,'Natación', '12:45:00'),
(12,'Voleibol', '15:15:00'),(13,'Fútbol', '16:45:00'),
(14,'Baloncesto', '18:00:00'),(15,'Natación', '19:30:00'),
(16,'Voleibol', '21:00:00'),(17,'Fútbol', '10:15:00'),
(18,'Baloncesto', '12:30:00'),
(19,'Natación', '14:00:00'),(20,'Voleibol', '16:45:00');

INSERT INTO cat_titulos (idTitulo, nombreTitulo)
VALUES
    (1, 'Campeón Nacional'),
    (2, 'Subcampeón Nacional'),
    (3, 'Campeón Regional'),
    (4, 'Subcampeón Regional'),
    (5, 'Medalla de Oro'),
    (6, 'Medalla de Plata'),
    (7, 'Medalla de Bronce'),
    (8, 'Primer Lugar'),
    (9, 'Segundo Lugar'),
    (10, 'Tercer Lugar'),
    (11, 'Mejor Jugador'),
    (12, 'Mejor Jugadora'),
    (13, 'MVP (Jugador Más Valioso)'),
    (14, 'Mejor Entrenador'),
    (15, 'Mejor Equipo'),
    (16, 'Mención Honorífica'),
    (17, 'Premio al Espíritu Deportivo'),
    (18, 'Mejor Rendimiento Individual'),
    (19, 'Mejor Rendimiento en Equipo'),
    (20, 'Logro Destacado');

INSERT INTO cat_categorias (idCategoria, nombreCategoria)
VALUES
    (1, 'Categoría A'),
    (2, 'Categoría B'),
    (3, 'Categoría C'),
    (4, 'Categoría D'),
    (5, 'Categoría Juvenil'),
    (6, 'Categoría Infantil'),
    (7, 'Categoría Femenina'),
    (8, 'Categoría Masculina'),
    (9, 'Categoría Mixta'),
    (10, 'Categoría Senior'),
    (11, 'Categoría Elite'),
    (12, 'Categoría Amateur'),
    (13, 'Categoría Profesional'),
    (14, 'Categoría Escolar'),
    (15, 'Categoría Universitaria'),
    (16, 'Categoría Absoluta'),
    (17, 'Categoría Master'),
    (18, 'Categoría Internacional'),
    (19, 'Categoría Nacional'),
    (20, 'Categoría Regional');

INSERT INTO alumno (matricula, nombre, apellidoPaterno, apellidoMaterno, telefono, correoElectronico, fechaNacimiento, CURP, idCategoria, idDeporte, idTitulo)
VALUES
    (1, 'Juan', 'González', 'López', '555-1234', 'juan@example.com', '2000-01-15', 'ABC123456XYZ789012', 1, 1, 3),
    (2, 'María', 'Rodríguez', 'Martínez', '555-5678', 'maria@example.com', '1999-03-20', 'DEF456789XYZ123456', 2, 4, 16),
    (3, 'Carlos', 'Pérez', 'García', '555-9876', 'carlos@example.com', '2002-07-10', 'GHI789012XYZ345678', 3, 5, 17),
    (4, 'Ana', 'López', 'Sánchez', '555-4321', 'ana@example.com', '2003-05-02', 'JKL012345XYZ678901', 2, 2, 15),
    (5, 'Pedro', 'Fernández', 'Díaz', '555-8765', 'pedro@example.com', '2001-11-30', 'MNO345678XYZ234567', 1, 6, 11),
    (6, 'Laura', 'Hernández', 'Mendoza', '555-2345', 'laura@example.com', '2002-08-25', 'PQR678901XYZ789012', 3, 7, 12),
    (7, 'José', 'Martínez', 'Luna', '555-7890', 'jose@example.com', '2003-09-18', 'STU901234XYZ456789', 2, 9, 13),
    (8, 'Sofía', 'Gómez', 'Torres', '555-3456', 'sofia@example.com', '2000-12-05', 'VWX234567XYZ901234', 1, 11, 10),
    (9, 'Javier', 'Ramírez', 'Cruz', '555-6543', 'javier@example.com', '1999-04-12', 'YZA345678XYZ012345', 3, 11, 8),
    (10, 'Carmen', 'Díaz', 'Fernández', '555-8765', 'carmen@example.com', '2001-06-08', 'BCD456789XYZ123456', 2, 14, 7),
    (11, 'Miguel', 'Torres', 'Hernández', '555-1234', 'miguel@example.com', '2004-02-22', 'EFG567890XYZ234567', 1, 13, 6),
    (12, 'Luis', 'López', 'Soto', '555-5678', 'luis@example.com', '2002-10-17', 'HIJ678901XYZ345678', 2, 12, 5),
    (13, 'Elena', 'Martínez', 'Vargas', '555-9876', 'elena@example.com', '1999-07-14', 'KLM789012XYZ456789', 3, 9, 3),
    (14, 'Raúl', 'González', 'Sánchez', '555-4321', 'raul@example.com', '2001-03-11', 'NOP901234XYZ567890', 1, 11, 9),
    (15, 'Isabel', 'Rodríguez', 'Pérez', '555-8765', 'isabel@example.com', '2003-08-09', 'QRS012345XYZ678901', 2, 12, 4),
    (16, 'Jorge', 'Sánchez', 'Molina', '555-2345', 'jorge@example.com', '2000-05-14', 'TUV123456XYZ789012', 3, 4, 2),
    (17, 'Patricia', 'Díaz', 'Gómez', '555-7890', 'patricia@example.com', '1998-09-27', 'WXY234567XYZ901234', 1, 20, 1),
    (18, 'Fernando', 'Hernández', 'López', '555-3456', 'fernando@example.com', '2001-12-30', 'YZA345678XYZ012345', 2, 11, 13),
    (19, 'Gloria', 'Torres', 'Ramírez', '555-6543', 'gloria@example.com', '1999-01-04', 'BCD456789XYZ123456', 3, 15, 19),
    (20, 'Roberto', 'Gómez', 'Fernández', '555-4321', 'roberto@example.com', '2002-04-19', 'EFG567890XYZ234567', 1, 15, 13);

INSERT INTO entrenadores (matricula, nombre, apellidoPaterno, apellidoMaterno, telefono, correoElectronico, fechaNacimiento, CURP, idCategoria, idDeporte)
VALUES
    (1001, 'Carlos', 'González', 'López', '555-1234', 'carlos@example.com', '1975-05-10', 'ABC123456XYZ789012',  1, 5),
    (1002, 'María', 'Rodríguez', 'Martínez', '555-5678', 'maria@example.com', '1980-03-15', 'DEF456789XYZ123456',  2, 4),
    (1003, 'Alejandro', 'Pérez', 'García', '555-9876', 'alejandro@example.com', '1983-07-20', 'GHI789012XYZ345678',  3, 1),
    (1004, 'Laura', 'López', 'Sánchez', '555-4321', 'laura@example.com', '1978-12-02', 'JKL012345XYZ678901',  2, 2),
    (1005, 'Pedro', 'Fernández', 'Díaz', '555-8765', 'pedro@example.com', '1976-11-30', 'MNO345678XYZ234567',  1, 3),
    (1006, 'Sofía', 'Hernández', 'Mendoza', '555-2345', 'sofia@example.com', '1982-08-25', 'PQR678901XYZ789012',  3, 7),
    (1007, 'José', 'Martínez', 'Luna', '555-7890', 'jose@example.com', '1985-09-18', 'STU901234XYZ456789',  2, 6),
    (1008, 'Elena', 'Gómez', 'Torres', '555-3456', 'elena@example.com', '1979-12-05', 'VWX234567XYZ901234',  1, 10),
    (1009, 'Javier', 'Ramírez', 'Cruz', '555-6543', 'javier@example.com', '1986-04-12', 'YZA345678XYZ012345',  3, 11),
    (1010, 'Carmen', 'Díaz', 'Fernández', '555-8765', 'carmen@example.com', '1977-06-08', 'BCD456789XYZ123456',  2, 14),
    (1011, 'Miguel', 'Torres', 'Hernández', '555-1234', 'miguel@example.com', '1987-02-22', 'EFG567890XYZ234567',  1, 12),
    (1012, 'Luis', 'López', 'Soto', '555-5678', 'luis@example.com', '1984-10-17', 'HIJ678901XYZ345678',  2, 9),
    (1013, 'Raúl', 'Martínez', 'Vargas', '555-9876', 'raul@example.com', '1979-07-14', 'KLM789012XYZ456789', 3, 8),
    (1014, 'Isabel', 'González', 'Sánchez', '555-4321', 'isabel@example.com', '1981-03-11', 'NOP901234XYZ567890',  1, 17),
    (1015, 'Jorge', 'Rodríguez', 'Pérez', '555-8765', 'jorge@example.com', '1983-08-09', 'QRS012345XYZ678901',  2, 20),
    (1016, 'Patricia', 'Sánchez', 'Molina', '555-2345', 'patricia@example.com', '1975-05-14', 'TUV123456XYZ789012', 3, 19),
    (1017, 'Fernando', 'Torres', 'López', '555-7890', 'fernando@example.com', '1978-12-30', 'WXY234567XYZ901234',  1, 13),
    (1018, 'Gloria', 'Hernández', 'Ramírez', '555-6543', 'gloria@example.com', '1980-01-04', 'YZA345678XYZ012345',  2, 15),
    (1019, 'Roberto', 'Gómez', 'Fernández', '555-4321', 'roberto@example.com', '1982-04-19', 'EFG567890XYZ234567',  1, 16),
    (1020, 'Cecilia', 'Díaz', 'Soto', '555-8765', 'cecilia@example.com', '1981-07-22', 'HIJ678901XYZ345678', 3, 18);

INSERT INTO competicion (idCompeticion, idDeporte, idCategoria, idTitulo)
VALUES
    (1, 1, 1, 5),
    (2, 1, 2, 3),
    (3, 3, 3, 1),
    (4, 4, 2, 2),
    (5, 7, 1, 4),
    (6, 14, 3, 6),
    (7, 19, 2, 7),
    (8, 7, 1, 8),
    (9, 8, 3, 9),
    (10, 16, 1, 10),
    (11, 17, 2, 11),
    (12, 15, 3, 12),
    (13, 6, 2, 13),
    (14, 13, 1, 14),
    (15, 11, 3, 15),
    (16, 11, 2, 16),
    (17, 20, 1, 17),
    (18, 18, 2, 18),
    (19, 5, 3, 19),
    (20, 6, 1, 20);


Alter table deporte  add primary key (idDeporte);
ALTER TABLE deporte modify idDeporte INT AUTO_INCREMENT;
alter table alumno add primary key (matricula);
alter table cat_titulos add primary key (idTitulo);
ALTER TABLE cat_titulos modify idTitulo INT AUTO_INCREMENT;
alter table cat_categorias add primary key (idCategoria);
ALTER TABLE cat_categorias modify idCategoria INT AUTO_INCREMENT;
ALTER TABLE alumno ADD FOREIGN KEY (idCategoria) REFERENCES cat_categorias(idCategoria);
ALTER TABLE alumno ADD FOREIGN KEY (idTitulo) REFERENCES cat_titulos(idTitulo);
alter table entrenadores add primary key (matricula);
ALTER TABLE entrenadores ADD FOREIGN KEY (idCategoria) REFERENCES cat_categorias(idCategoria);
alter table competicion add primary key (idCompeticion);
ALTER TABLE competicion modify idCompeticion INT AUTO_INCREMENT;
ALTER TABLE competicion ADD FOREIGN KEY (idCategoria) REFERENCES cat_categorias(idCategoria);
ALTER TABLE competicion ADD FOREIGN KEY (idTitulo) REFERENCES cat_titulos(idTitulo);
ALTER TABLE competicion add FOREIGN KEY (idDeporte) REFERENCES deporte(idDeporte);

INSERT INTO deporte (nombre, horario) VALUES ('Atletismo', '08:00:00');
UPDATE deporte SET horario = '09:30:00' WHERE idDeporte = 4;
SELECT nombre, horario FROM deporte WHERE nombre = 'Baloncesto';

INSERT INTO alumno (matricula, nombre, apellidoPaterno, apellidoMaterno, telefono, correoElectronico, fechaNacimiento, CURP, idCategoria, idDeporte, idTitulo)
VALUES (1021, 'Luisa', 'Gómez', 'Soto', '555-7890', 'luisa@example.com', '2000-07-15', 'XYZ123456ABC789012', 2, 15, 1);
UPDATE alumno SET telefono = '555-9999' WHERE matricula = 1005;
SELECT nombre, apellidoPaterno, correoElectronico FROM alumno WHERE idCategoria = 3;

INSERT INTO entrenadores (matricula, nombre, apellidoPaterno, apellidoMaterno, telefono, correoElectronico, fechaNacimiento, CURP, idCategoria, idDeporte)
VALUES (1022, 'Manuel', 'Martínez', 'Gómez', '555-5555', 'manuel@example.com', '1970-12-20', 'ABC123456XYZ789012', 1, 21);
UPDATE entrenadores SET telefono = '555-6666' WHERE matricula = 1003;
SELECT nombre, apellidoPaterno, correoElectronico FROM entrenadores WHERE idCategoria = 2;

INSERT INTO competicion (idCompeticion, idDeporte, idCategoria, idTitulo) VALUES (21, 4, 3, 4);
UPDATE competicion SET idDeporte = 6 WHERE idCompeticion = 5;
SELECT idCompeticion, idDeporte, idCategoria FROM competicion WHERE idCategoria = 2;

INSERT INTO cat_titulos (idTitulo, nombreTitulo) VALUES (21, 'Mención Honorífica');
UPDATE cat_titulos SET nombreTitulo = 'Mejor Jugadora' WHERE idTitulo = 12;
SELECT idTitulo, nombreTitulo FROM cat_titulos WHERE idTitulo <= 10;

INSERT INTO cat_categorias (idCategoria, nombreCategoria) VALUES (21, 'Categoría Internacional');
UPDATE cat_categorias
SET nombreCategoria = 'Categoría Profesional' WHERE idCategoria = 13;
SELECT idCategoria, nombreCategoria
FROM cat_categorias WHERE idCategoria >= 10;

/*A que categoria entrena*/
SELECT E.matricula,CONCAT( E.nombre, ' ', E.apellidoPaterno, ' ', E.apellidoMaterno) AS nombre, CC.nombreCategoria
FROM entrenadores AS E
INNER JOIN cat_categorias AS CC
ON CC.idCategoria = E.idCategoria;

/*Alumnos y el titulo que tienen*/
SELECT A.matricula, CONCAT( A.nombre, ' ', A.apellidoPaterno, ' ', A.apellidoMaterno) AS nombre, CT.nombreTitulo
FROM alumno AS A
INNER JOIN cat_categorias AS CC
ON CC.idCategoria = A.idCategoria
INNER JOIN cat_titulos AS CT
ON CT.idTitulo = A.idTitulo;

/*Detalle de las competiciones*/
SELECT C.idCompeticion, D.nombre, CC.nombreCategoria, CT.nombreTitulo
FROM competicion AS C
INNER JOIN deporte AS D
ON D.idDeporte = C.idDeporte
INNER JOIN cat_categorias AS CC
ON CC.idCategoria = C.idCategoria
INNER JOIN cat_titulos AS CT
ON CT.idTitulo = C.idTitulo;

/*Alumnos y en que competición están ahorita*/
SELECT C.idCompeticion, D.nombre AS deporte, CONCAT( A.nombre, ' ', A.apellidoPaterno, ' ', A.apellidoMaterno) AS nombre
FROM competicion AS C
INNER JOIN deporte AS D
ON D.idDeporte = C.idDeporte
INNER JOIN alumno AS A
ON A.idDeporte = D.idDeporte;

/*Entrenadores y el titulo que podrian ganar*/
SELECT C.idCompeticion, E.matricula, CONCAT( E.nombre, ' ', E.apellidoPaterno, ' ', E.apellidoMaterno) AS nombre, CT.nombreTitulo
FROM entrenadores AS E
INNER JOIN competicion AS C
ON C.idCategoria = E.idCategoria
AND C.idDeporte = E.idDeporte
INNER JOIN cat_titulos AS CT
ON CT.idTitulo = C.idTitulo;

