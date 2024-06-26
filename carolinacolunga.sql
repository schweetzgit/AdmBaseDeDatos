create database carolinacolunga;
use carolinacolunga;

create table carolinacolunga_tabla1 (
	id int auto_increment primary key,
    nombre varchar (90),
    fechaNacimiento date,
    activo bool,
    genero char(1)
);

insert into carolinacolunga_tabla1 (nombre, fechaNacimiento, activo, genero)
values  ('Ernesto', '2002-05-08', 1, 'M'),
		('Abril', '2002-04-14', 0, 'F'),
        ('Sergei', '2000-04-07', 1, 'M'),
        ('Enrique', '2000-11-17', 0, 'M'),
        ('Leonardo', '2002-03-18', 1, 'M'),
        ('Jennifer', '2000-05-17', 1, 'F'),
        ('Ivan', '2002-01-24', 0, 'M'),
        ('Daniel', '2000-05-10', 0, 'M'),
        ('Guillermo', '2002-05-06', 0, 'M'),
        ('Carolina', '2001-11-21', 1, 'F');
    
create table carolinacolunga_tabla2 (
	id int auto_increment,
    idTabla1 int,
    fechaAlta datetime,
    carrera varchar(30),
    inscrito bool,
    primary key(id),
    foreign key(idTabla1) references carolinacolunga_tabla1(id)
);


insert into carolinacolunga_tabla2 (idTabla1, fechaAlta, carrera, inscrito)
values  (1, now(), 'Ciencia de datos', 1),
		(2, now(), 'MAC', 1),
        (3, now(), 'Ingenieria Civil', 0),
        (4, now(), 'Economia', 1),
		(5, now(), 'Pedagogia', 0),
        (6, now(), 'MAC', 0),
        (7, now(), 'Actuaria', 1),
        (8, now(), 'MAC', 1),
        (9, now(), 'Actuaria', 0),
        (10, now(), 'MAC', 1);
        
select * from carolinacolunga_tabla2;
