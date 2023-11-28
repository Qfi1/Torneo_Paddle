create user 'consul'@'localhost' identified BY '1234';
SHOW grants for 'consul'@'localhost';

use torneo_padel;

GRANT SELECT 
on Torneo_padel.*
TO 'consul'@'localhost';



SHOW grants for 'consul'@'localhost';
############################################################

create user 'Admin'@'localhost' identified BY 'tybv05s9';

grant ALL ON *.* to 'Admin'@'localhost';

REVOKE DELETE  ON *.* FROM  'Admin'@'localhost'; ## quita permisos de DELETE sobre el usuario Admin

REVOKE  DROP  ON *.* FROM  'Admin'@'localhost'; ## quita permisos de DROP sobre el usuario Admin

SHOW grants for 'Admin'@'localhost';


