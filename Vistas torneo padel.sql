### Vista para ver los participantes de sexo masculino 
CREATE VIEW participantes_hombres AS
(SELECT nombre, apellido FROM participantes
	WHERE  sexo= 'Masculino');
    ### Vista para ver los torneos que se realizan el circuito CMP , fecha y la cantidad de parejas que se anotaron
CREATE VIEW torneos_CMP AS
(SELECT b.nombre_circuito,a.fecha,a.total_parejas FROM torneos a
join circuitos b on a.fk_circuito=b.id
	WHERE  a.fk_circuito=1);
    
        ### Vista para ver que participantes NO abonaron su inscripsion con fecha y num de inscripcion 
CREATE VIEW No_abonaron_insc AS
(SELECT a.nombre,a.apellido, b.num_inscripcion,b.fecha_inscripcion from participantes a join
inscripciones b on b.fk_parcipante = a.id_participante
	WHERE  b.abono_insc=0);
    
        ### Vista para ver que participantes poseen mas de 600 puntos para la categoria
CREATE VIEW Mas_600_pts AS
(SELECT a.nombre,a.apellido,a.puntos_participante from participantes a join
inscripciones b on b.fk_parcipante = a.id_participante
	WHERE  a.puntos_participante >= 600 );
    
    
### Vista para ver que la cantidad de parejas que hubieron en un torneo
CREATE VIEW parejas_torneos AS
(SELECT  b.nombre_circuito,a.fecha, a.total_parejas  from torneos a 
join circuitos b on a.fk_circuito=b.id );
    
    
    
    
    