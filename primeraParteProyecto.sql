create database escuelaDeportivaDeAltoRendimiento;
use escuelaDeportivaDeAltoRendimiento;
	
create table deporte (
	nombre,
    
);

create table alumno (
	matricula,
    nombre,
    apellidoPaterno,
    apellidoMaterno,
    telefono,
    correoElectronico,
    fechaNacimiento,
    CURP,
    categoria,
    titulos,
    premios
);

create table cat_titulos (
	
);

create table cat_categorias (
	
);

create table cat_deportes (
	
);

create table entrenadores (
	matricula,
    nombre,
    apellidoPaterno,
    apellidoMaterno,
    telefono,
    correoElectronico,
    fechaNacimiento,
    CURP,
    RFC
);

create table competicion (
	deporte,
    categoria,
    titulo
);