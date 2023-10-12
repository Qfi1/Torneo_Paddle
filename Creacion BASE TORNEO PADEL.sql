create schema  torneo_padel;
use torneo_padel;

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
