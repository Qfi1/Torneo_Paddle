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
USE `torneo_padel`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `saludar`(nombre VARCHAR(50), apellido VARCHAR(50), mail VARCHAR(100)) RETURNS varchar(150) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

DECLARE nombre_completo VARCHAR(100);

SET nombre_completo = CONCAT(nombre, ' ', apellido);

IF mail IS NOT NULL THEN

RETURN CONCAT('Hola, ' , nombre_completo,' su mail es: ',mail);

ELSE

RETURN concat(nombre_completo,' aun no tenes mail registrado');

END IF;

END$$

DELIMITER ;
; 

