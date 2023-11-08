/*
Este trigger sirve para saber cuando se le actualiza los puntos a un participante en la tabla participantes, y deja un registro en la tabla audi_participantes con los puntos antes del cambio, los puntos despues la fecha, el tipo de DML y el usuario de la base.
*/
DELIMITER //

CREATE TRIGGER tr_hist_puntos  before update ON participantes

FOR EACH ROW

BEGIN
	
INSERT INTO audi_participantes (id_participante,puntosbefore_puntosafter,nombre_accion,nombre_tabla,usuario,fecha)
values (new.id_participante, concat('Puntos nuevos: ', new.puntos_participante,', Puntos anteriores: ', old.puntos_participante), 'UPDATE','Participantes', session_user(),current_timestamp());
                  
 
END//

 

DELIMITER ;

/*

Este trigger sirve para saber cuando se le actualiza el estado de la inscripcion a un participante en la tabla inscripciones, y deja un registro en la tabla audi_inscripcion con el estado de antes de la inscripcion,la fecha, el tipo de DML y el usuario de la base.

*/

DELIMITER //

CREATE TRIGGER tr_hist_pago_inscripcion  before update ON inscripciones

FOR EACH ROW

BEGIN
	
INSERT INTO audi_inscripciones (num_inscripcion,pago_nopago,nombre_accion,nombre_tabla,usuario,fecha)
values (new.num_inscripcion, concat('Estado inscripcion antes: ', old.abono_insc,', Estado inscripcion despues: ', new.abono_insc), 'UPDATE','Inscripciones', session_user(),current_timestamp());
                  
 
END//

 

DELIMITER ;