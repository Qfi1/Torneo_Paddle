##este SP medio flojito pero creo que me pueden ayudar es para que segun tus puntos en la tabla participantes te muestre tu categoria de la tabla categorias siempre basandose en si es mayor o no que los puntos_min 
## de esa categoria, esta medio flojo pero creo que se puede pulir mas con su apoyo su uso """call sp_participantes_puntos (puntos_participante) hay que poner un numero entre 1 y 1200 y dira la categoria""", 
##me gustaria que traiga un listado de los nombre de participantes y 
## al lado la categoria pero deberia hacer un join con dos tablas sin relacion aun asumo que quizas deberia hacer una tabla mas de relacion entre categoria y puntos o en participantes para que sea posible

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
	SET @categoria_p = concat(' where puntos_min' ,'<', puntos_participante , ' limit 1');
ELSE
	SET @categoria_p = '';
END IF;
SET @categoria = concat('Select  nombre  from  categorias', @categoria_p);
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