##Funcion que muestra la edad de los participantes segun su fecha de nacimiento

CREATE DEFINER=`root`@`localhost` FUNCTION `edad_participantes`(fec_nac date) RETURNS int
    DETERMINISTIC
BEGIN
declare edad int;
set edad = timestampdiff(year,FEC_NAC,CURDATE());
RETURN edad;
END


USE `torneo_padel`;
DROP function IF EXISTS `saludar`;

USE `torneo_padel`;
DROP function IF EXISTS `torneo_padel`.`saludar`;
;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `edad_participantes`(fec_nac date) RETURNS int
    DETERMINISTIC
BEGIN
declare edad int;
set edad = timestampdiff(year,FEC_NAC,CURDATE());
RETURN edad;
END
DELIMITER $$



##Funcion que Crea un saludo para los que poseen mail registrado
USE `torneo_padel`;
DROP function IF EXISTS `saludar`;

USE `torneo_padel`;
DROP function IF EXISTS `torneo_padel`.`saludar`;
;

USE `torneo_padel`;
DROP function IF EXISTS `saludar`;

USE `torneo_padel`;
DROP function IF EXISTS `torneo_padel`.`saludar`;
;

DELIMITER $$
USE `torneo_padel`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `saludar`(p_id_participante int) RETURNS varchar(150) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

DECLARE v_nombre_completo VARCHAR(30);
DECLARE v_nombre VARCHAR(20);
DECLARE v_apellido VARCHAR(20);
DECLARE v_email VARCHAR(40);

SET v_nombre = (Select nombre from participantes where id_participante=p_id_participante);
SET v_apellido = (Select apellido from participantes where id_participante=p_id_participante);
SET v_nombre_completo = concat(v_nombre, ' ' ,v_apellido);
set v_email = (Select mail from participantes where id_participante=p_id_participante);

IF v_email IS NOT NULL THEN

RETURN CONCAT('Hola, ' , v_nombre_completo,' su mail es: ',v_email);

ELSE

RETURN concat(v_nombre_completo,' aun no tenes mail registrado');

END IF;

END$$

DELIMITER ;
;

