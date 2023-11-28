select*From inscripciones;


select count(id_participante) from participantes;

select*From participantes;

select*from categorias;

select count(id_participante)From participantes where sexo='femenino';

select b.nombre, b.apellido From inscripciones a
inner join participantes b
on b.id_participante=a.fk_parcipante
 where fk_categoria=1;
 
 select *from participantes where edad between 25 and 37;
 
 select b.nombre, b.apellido, a.fecha_inscripcion,a.abono_insc From inscripciones a
inner join participantes b
on b.id_participante=a.fk_parcipante

 