create user 'usuario_1'@'localhost' identified by 'usuario_1' password expire default;
create user 'usuario_dba'@'localhost' identified by 'usuario_dba' password expire default;
grant all privileges on carolinacolunga_ventas. * to 'usuario_dba'@'localhost' with grant option;

SHOW GRANTS FOR 'usuario_dba'@'localhost';
REVOKE USAGE ON *.* FROM 'usuario_dba'@'localhost';