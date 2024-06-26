use carolinacolunga_ventas;

create table auditoria (usuario char(50),
						fecha_hora datetime,
						operacion char(30));
                        
delimiter //
create trigger audita_ventas_update BEFORE UPDATE ON ventas
for each row
begin
insert into auditoria values (current_user(),CURRENT_TIMESTAMP, 'actualizacion');
end;//
delimiter ;

insert into ventas values (1,1,1,1,1,1000,1000);

update ventas
set per_id=2
where per_id=1 and prod_id=1 and tie_id=1 and promo_id=1;

select * from auditoria;

delimiter //
create trigger audita_ventas_delete AFTER DELETE ON ventas
for each row
begin
insert into auditoria values (current_user(),CURRENT_TIMESTAMP, 'borrado');
end;//

delete from ventas
where per_id=2 and prod_id=1 and tie_id=1 and promo_id=1;

select * from auditoria; 






















