##ESTE SP AHORA lo que hace es que te muestra todos los participantes que con su respectivo nombre apellido, puntos acumulados, categoria solo si los puntos min de la categoria es menor al parametro que enviamos

USE `torneo_padel`;
DROP procedure IF EXISTS `sp_participantes_puntos`;

USE `torneo_padel`;
DROP procedure IF EXISTS `torneo_padel`.`sp_participantes_puntos`;
;

DELIMITER $$
USE `torneo_padel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_participantes_puntos`(in puntos_participante int)
BEGIN
IF puntos_participante !=0 then
	SET @categoria_p = concat(' where puntos_min' ,'<', puntos_participante, ' order by c.nombre');
ELSE
	SET @categoria_p = '';
END IF;
SET @categoria = concat('select p.nombre,p.apellido,c.nombre as categoria , puntos_min as puntos_minimos_para_la_categoria,puntos_max as puntos_maximos_para_la_categoria, puntos_participante as puntos_actuales
from inscripciones i
inner join participantes p ON i.fk_parcipante = p.id_participante
inner join categorias c on i.fk_categoria = c.idcategorias', @categoria_p);
PREPARE runSQL from @categoria;
execute runSQL;
DEALLOCATE PREPARE runSQL;
END$$

DELIMITER ;
;

##Este sp ordena los participantes en orde alfabetico y les muestra la edad usan la funcion de edad_participantes para tener un listado
## su uso seria call sp_ordena_participantes('apellido') o call sp_ordena_participantes('Nombre') para ordenar por nombre o apellido

USE `torneo_padel`;
DROP procedure IF EXISTS `sp_ordena_participantes`;

USE `torneo_padel`;
DROP procedure IF EXISTS `torneo_padel`.`sp_ordena_participantes`;
;

DELIMITER $$
USE `torneo_padel`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordena_participantes`( in nombre varchar(20))
BEGIN
 if nombre != '' then
	SET @orden_participantes = concat(' order by ',nombre);
ELSE
	SET @orden_participantes = '';
END IF;

SET @clausula = concat('select nombre , apellido, torneo_padel.edad_participantes (fec_nac) from participantes', @orden_participantes);
PREPARE runSQL from @clausula;
execute runSQL;
DEALLOCATE PREPARE runSQL;
END$$

DELIMITER ;
;