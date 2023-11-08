create schema  torneo_padel;
use torneo_padel;

create table Audi_inscripciones (
id int  not null unique auto_increment,
num_inscripcion int not null,
pago_nopago varchar (255),
nombre_accion varchar (10),
nombre_tabla varchar (50),
usuario varchar(50) not null,
fecha date not null,
PRIMARY KEY (id));



create table Audi_participantes (
id int  not null unique auto_increment,
id_participante int not null,
puntosbefore_puntosafter varchar (255),
nombre_accion varchar (10),
nombre_tabla varchar (50),
usuario varchar(50) not null,
fecha date not null,
PRIMARY KEY (id));





CREATE TABLE `categorias` (
  `idcategorias` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `puntos_min` int NOT NULL,
  `puntos_max` int NOT NULL,
  PRIMARY KEY (`idcategorias`));
  
CREATE TABLE pais (
  id int not null unique,
  nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));

select*From pais;


CREATE TABLE patrocinadores (
  id int not null unique,
  nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));

select*From patrocinadores;


CREATE TABLE Circuitos (
  id int not null unique,
  nombre_circuito VARCHAR(50) NOT NULL,
  localidad varchar (30),
  fk_pais int,
  fk_patrocinador int,
  PRIMARY KEY (id));
  
ALTER TABLE circuitos
ADD FOREIGN KEY (fk_pais) REFERENCES pais(id);

ALTER TABLE circuitos
ADD FOREIGN KEY (fk_patrocinador) REFERENCES patrocinadores(id);


select*From circuitos;
  
create table torneos (
id int not null unique,
fk_circuito int not null unique,
Fecha date not null,
total_parejas int not null,
PRIMARY key (ID),
foreign KEY (fk_circuito) REFERENCES circuitos(id));
alter table torneos add column  fk_categoria int not null;
alter table torneos add constraint  fk_categoria foreign KEY (fk_categoria) references categorias(idcategorias);

CREATE TABLE `participantes` (
  `id_participante` int NOT NULL AUTO_INCREMENT,
  `dni_participante` varchar(12) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `puntos_participante` int NOT NULL,
  PRIMARY KEY (`id_participante`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `inscripciones` (
  `num_inscripcion` int NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` date DEFAULT NULL,
  `abono_insc` tinyint NOT NULL,
  `fk_categoria` int DEFAULT NULL,
  `fk_parcipante` int DEFAULT NULL,
  PRIMARY KEY (num_inscripcion));

ALTER TABLE inscripciones
ADD FOREIGN KEY (fk_categoria) REFERENCES categorias(idcategorias);

ALTER TABLE inscripciones
ADD FOREIGN KEY (fk_parcipante) REFERENCES participantes(id_participante);





create table inscr_torneo(
id int  not null unique,
fk_idtorneo int not null,
fk_idinscripcion int not null,
PRIMARY KEY (id),
Foreign key (fk_idtorneo) references torneos(id),
Foreign key (fk_idinscripcion) references inscripciones(num_inscripcion));



ALTER TABLE `torneo_padel`.`participantes` 
ADD COLUMN `mail` VARCHAR(100) NULL DEFAULT NULL AFTER `puntos_participante`;

ALTER TABLE `torneo_padel`.`participantes` 
ADD COLUMN `fec_nac` DATETIME NULL AFTER `mail`;

ALTER TABLE `torneo_padel`.`participantes` 
DROP COLUMN `edad`;

ALTER TABLE `torneo_padel`.`participantes` 
CHANGE COLUMN `fec_nac` `fec_nac` DATE NULL DEFAULT NULL

UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1992-12-02' WHERE (`id_participante` = '1');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1993-01-03' WHERE (`id_participante` = '2');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1994-11-04' WHERE (`id_participante` = '3');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1991-06-21' WHERE (`id_participante` = '4');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1998-07-30' WHERE (`id_participante` = '5');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1998-02-22' WHERE (`id_participante` = '6');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1998-05-23' WHERE (`id_participante` = '7');

UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1998-06-30' WHERE (`id_participante` = '9');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1994-02-10' WHERE (`id_participante` = '10');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1998-08-27' WHERE (`id_participante` = '17');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1993-09-10' WHERE (`id_participante` = '18');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1975-03-23' WHERE (`id_participante` = '19');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1970-04-12' WHERE (`id_participante` = '20');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '2000-08-21' WHERE (`id_participante` = '21');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '2001-09-04' WHERE (`id_participante` = '22');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '2003-11-03' WHERE (`id_participante` = '23');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1991-05-23' WHERE (`id_participante` = '24');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1982-06-20' WHERE (`id_participante` = '25');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1977-08-04' WHERE (`id_participante` = '26');
UPDATE `torneo_padel`.`participantes` SET `fec_nac` = '1996-09-25' WHERE (`id_participante` = '27');

