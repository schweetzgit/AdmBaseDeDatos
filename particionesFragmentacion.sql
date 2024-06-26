create database carolinacolunga_ventas;
use carolinacolunga_ventas;

create table categoria(
	reg_id integer not null,
    cat_tipo char(12) not null,
    cat_desc char(60) not null)
    tablespace datos_tbs1;
    
create table producto(
	cat_id integer not null,
    prod_id integer not null,
    prod_nom char(60) not null,
    pkg_tipo char(18) not null)
    tablespace datos_tbs2;

create table periodo(
	per_id integer not null,
    fecha date not null,
    dia char(3) not null,
    semana integer not null,
    mes char(5) not null,
    trimestre char(5) not null,
    año integer not null)
    tablespace datos_tbs3;

create table region(
	reg_id integer not null,
    ciudad char(20) not null,
    estado char(20) not null,
    municipio char(20) not null,
    region char(20) not null)
    tablespace datos_tbs4;
    
create table tienda(
	tie_id integer not null,
    reg_id integer not null,
    tie_tipo char(10) not null,
    tie_nombre char(30) not null,
    calle char(30) not null,
    ciudad char(20) not null,
    estado char(5) not null,
    cp char(5) not null)
    tablespace datos_tbs5;

create table promocion(
	promo_id integer not null,
    promo_tipo integer not null,
    promo_desc char(40) not null,
    valor dec(7,2) not null,
    fecha_inicio date not null,
    fecha_fin date not null)
    tablespace datos_tbs6;

create table ventas(
	per_id integer not null,
    cat_id integer not null,
    prod_id integer not null,
	tie_id integer not null,
	promo_id integer not null,
    cantidad integer not null,
    ventas dec(7,2) not null)
 
	PARTITION BY RANGE (per_id)
    SUBPARTITION BY HASH (promo_id)
    subpartitions 3 (
    partition ventas1 VALUES LESS THAN (300),
    PARTITION ventas2 VALUES LESS THAN (600),
    PARTITION ventas3 VALUES LESS THAN (900)
    );



