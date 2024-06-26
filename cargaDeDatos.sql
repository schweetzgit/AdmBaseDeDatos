-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\categoria.txt'
INTO TABLE categoria
FIELDS TERMINATED BY '|';

-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\periodo.txt'
INTO TABLE periodo
FIELDS TERMINATED BY '|'
(per_id, @fecha, dia, semana, mes, trimestre, año)
SET fecha=STR_TO_DATE(@fecha, '%d/%m/%Y');

-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\producto.txt'
INTO TABLE producto
FIELDS TERMINATED BY '|';


-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\promocion.txt'
INTO TABLE promocion
FIELDS TERMINATED BY '|'
(promo_id, promo_tipo, promo_desc, valor, @fecha_inicio,@fecha_fin)
SET fecha_inicio=STR_TO_DATE(@fecha_inicio, '%d/%m/%Y'),
fecha_fin=STR_TO_DATE(@fecha_fin, '%d/%m/%Y');

-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\region.txt'
INTO TABLE region
FIELDS TERMINATED BY '|';

-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\tienda.txt'
INTO TABLE tienda
FIELDS TERMINATED BY '|';

-- Carga CAROLINA COLUNGA
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\ventas.txt'
INTO TABLE ventas
FIELDS TERMINATED BY '|';

select count(*) from producto;



