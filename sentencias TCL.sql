#########################################

START TRANSACTION ;

delete  from inscripciones 

where num_inscripcion in (8,9,10);

select*From inscripciones order by num_inscripcion desc

limit 10;

rollback;
commit;

########################################

START TRANSACTION ;

insert into patrocinadores (id, nombre) values (12,'kingo');
insert into patrocinadores (id, nombre) values (13,'jumbo');
insert into patrocinadores (id, nombre) values (14,'RIOT');
insert into patrocinadores (id, nombre) values (15, 'Samsung');
savepoint patro_1;
insert into patrocinadores (id, nombre) values (16,'Toyota');
insert into patrocinadores (id, nombre) values (17, 'Fiat');
insert into patrocinadores (id, nombre) values (18,'MZA');
insert into patrocinadores (id, nombre) values (19,'Google');
savepoint patro_2;
release savepoint patro_2;
select*From patrocinadores order by id desc

limit 10;

rollback;
commit;