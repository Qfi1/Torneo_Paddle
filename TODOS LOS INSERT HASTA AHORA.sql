use torneo_padel;
INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (1, '1era', 901, 1200);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (2, '2da', 801, 900);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (3, '3ra', 701, 800);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (4, '4ta', 551, 700);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (5, '5ta', 401, 550);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (6, '6ta', 201, 400);


INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (7, '7ma', 101, 200);

INSERT INTO categorias (idcategorias, nombre, puntos_min, puntos_max)
VALUES (8, '8va', 0, 100);



  INSERT INTO patrocinadores (id, nombre)
VALUES
(1, 'starvie'),
(2, 'wilson'),
(3, 'vairo'),
(4, 'royal'),
(5, 'munich'),
(6, 'xtrust'),
(7, 'nox'),
(8, 'adidas'),
(9, 'bullpade'),
(10, 'head'),
(11, 'puma');


  
  insert into pais values
(1,'Argentina') ,
(2,'Japon'),
(3,'Brasil'),
(4,'Marruecos'),
(5,'España'),
(6,'USA'),
(7,'Francia'),
(8,'Peru'),
(9,'Bolivia'),
(10,'Chile');



INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (1, '12345678', 'Gomez', 'Juan', 'Calle 123', '123456789', 'Masculino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (2, '23456789', 'Lopez', 'Maria', 'Avenida 456', '987654321', 'Femenino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (3, '34567890', 'Rodriguez', 'Carlos', 'Calle 789', '456789123', 'Masculino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (4, '45678901', 'Fernandez', 'Laura', 'Avenida 1234', '321654987', 'Femenino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre, direccion, telefono, sexo, puntos_participante)
VALUES (5, '56789012', 'Gonzalez', 'Pedro', 'Calle 567', '789123456', 'Masculino', FLOOR(RAND() * 1201));


INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (6, '12345678', 'Gomez', 'Juan', 'Calle 123', '123456789', 'Masculino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (7, '23456789', 'Lopez', 'Maria',  'Avenida 456', '987654321', 'Femenino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre, direccion, telefono, sexo, puntos_participante)
VALUES (8, '34567890', 'Rodriguez', 'Carlos',  'Calle 789', '456789123', 'Masculino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (9, '45678901', 'Fernandez', 'Laura',  'Avenida 1234', '321654987', 'Femenino', FLOOR(RAND() * 1201));

INSERT INTO participantes (id_participante, dni_participante, apellido, nombre,  direccion, telefono, sexo, puntos_participante)
VALUES (10, '56789012', 'Gonzalez', 'Pedro',  'Calle 567', '789123456', 'Masculino', FLOOR(RAND() * 1201));

INSERT INTO participantes (dni_participante, apellido, nombre,direccion, telefono, sexo, puntos_participante)
VALUES
('11', 'Gomez', 'Juan', 'Calle 123', '1234567890', 'Masculino', 800 ),
('12', 'López', 'Maria', 'Avenida 456', '0987654321', 'Femenino', 600), ('34567890', 'Rodríguez', 'Pedro',  '
Calle 789', '9876543210', 'Masculino', 1000),
('13', 'Fernandez', 'Laura',  'Avenida 012', '0123456789', 'Femenino', 400), ('56789012'
, 'González', 'Carlos', 'Calle 345', '9876543210', 'Masculino', 900),
('14', 'Martinez', 'Ana', 'Avenida 678', '0123456789', 'Femenino', 700), ('78901234', 'Pérez', 'Luis', 'Calle 901
' , '1234567890', 'Masculino', 1100),
('15', 'Sanchez', 'Lucía', 'Avenida 234', '0987654321', 'Femenino', 300), ('90123456', 'Romero', 'Diego', 'Calle 567
' , '9876543210', 'Masculino', 100),
('16', 'Torres', 'Carolina', 'Avenida 890', '0123456789', 'Femenino', 500), ('12345678', '
Gomez ', 'Juan', 'Calle 123', '1234567890', 'Masculino', 800);



insert into circuitos values 
( 1,'CMP Circuito Mendocino Padel', 'Mendoza', 1,1),( 2,'Punto de Oro', 'Mendoza', 1,1),
( 3,'Padel Cup Mendoza','Mendoza', 1,1),( 4,'AMJP Asociación Mendocina de Jugadores de Pádel', 'Mendoza', 1,1),
( 5,'Los Duendes', 'Mendoza', 1,1) , (6,'Punto Padel Club','Mendoza',1,1);

insert into inscripciones values 
(1,'19980624',5,6,1),
(2,'19980624',1,6,1),
(3,'19980624',0,3,3),
(4,'19980625',0,6,4),
(5,'19980630',1,1,5),
(6,'19980624',0,8,6),
(7,'19980624',0,1,7),
(8,'19980624',1,8,8),
(9,'19980624',1,4,9),
(10,'19980624',0,1,10);

insert into torneos values 
(1, 1, '20231015',16, 8),
(2, 4, '20200824',8, 1),
(4, 5, '20210715',16, 7),
(5, 6, '20000430',16, 8),
(6, 3, '20190322',16, 3),
(7, 2, '20231015',16, 2);



insert into inscr_torneo values 
(1,2,1),
(2,5,2),
(5,1,6),
(3,4,7);

