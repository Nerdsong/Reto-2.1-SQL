
-- 1* creamos la tabla con los perfiles de cada gatito. 

CREATE DATABASE gatitos;

USE gatitos;

CREATE TABLE gatitos_registro(
    id_gato INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apodo VARCHAR(20),
    edad INT NOT NULL,
    peso FLOAT NOT NULL,
    gustos VARCHAR (35),
    color_de_pelaje VARCHAR (20),
    color_de_ojos VARCHAR (20),
    PRIMARY KEY (id_gato)
)

INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Rocket", 3, 3,"dormir mucho","blanco","celeste")
INSERT INTO gatitos_registro (nombre,apodo,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Pinto", "pin", 5, 3.5,"los mimos","naranja","amarillo con verde")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Sunny", 2, 5,"jugar con pelotitas","negro","amarillentos")
INSERT INTO gatitos_registro (nombre,apodo,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Emelia", "Emeli", 5, 4.4,"reposar donde hay sol","gris con negro","amarillentos")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Nikki", 4, 4.3,"le gusta estar con ricochet","gris","verde claro")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Ricochet", 4, 4.7,"los lugares altos","blanco con gris","celeste")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Onyx", 7, 3.3,"ama la comida","naranja con marron","amarillentos")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Seiko", 2, 3.7,"dormir junto a otros gatos","blanco con gris","verdosos")
INSERT INTO gatitos_registro (nombre,apodo,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Nathan", "Ninja Nate", 7, 4.5,"esconderse","negro","amarillentos")

-- 2* Como no todos los gatitos tienen un apodo entonces modificar la tabla para que por defecto aparezca que no tienen

ALTER TABLE gatitos_registro ALTER COLUMN apodo SET DEFAULT 'no tiene apodo';
UPDATE gatitos_registro SET apodo = DEFAULT WHERE apodo is null;

--3* Encargarse de asignar el valor por defecto a los gatitos con valores NULL en su apodo
ALTER TABLE gatitos_registro MODIFY COLUMN apodo VARCHAR (20) NOT NULL;
-- Repito la misma linea de código para establecer un default a la columna "apodo"
ALTER TABLE gatitos_registro ALTER COLUMN apodo SET DEFAULT 'no tiene apodo';

--4* y 5 * Teniendo en cuenta que no todos los gatitos llegaron acompañados modificar la tabla para que por defecto aparezca que llegaron solitos
ALTER TABLE gatitos_registro ADD vino_con VARCHAR (20);

UPDATE gatitos_registro SET vino_con ='Sunny' WHERE nombre ='Rocket';
UPDATE gatitos_registro SET vino_con ='Rocket' WHERE nombre ='Sunny';
UPDATE gatitos_registro SET vino_con ='Seiko' WHERE nombre ='Emelia';
UPDATE gatitos_registro SET vino_con ='Emelia' WHERE nombre ='Seiko';
UPDATE gatitos_registro SET vino_con = 'vino solo' WHERE vino_con is null;
--5*
ALTER TABLE gatitos_registro ALTER COLUMN vino_con SET DEFAULT 'vino solo';

--6* Nos comunicaron que tambien hace falta tener en cuenta el peso de los michis, por lo que si su peso es mayor a 4 entonces asignar TRUE o FALSE para saber si estan con dieta (debe aparecer al lado del peso)

ALTER TABLE gatitos_registro ADD COLUMN dieta BOOLEAN AFTER peso ;
UPDATE gatitos_registro SET dieta = TRUE WHERE dieta IS NULL;
ALTER TABLE gatitos_registro MODIFY COLUMN dieta BOOLEAN NOT NULL;
ALTER TABLE gatitos_registro ALTER COLUMN dieta SET DEFAULT (peso>4);
UPDATE gatitos_registro SET dieta = DEFAULT ;

--7*Por ultimo nos piden agregar los años que faltan para que los michis se jubilen, que es a los 11 años (debe aparecer al lado de edad)

ALTER TABLE gatitos_registro ADD COLUMN anios_para_jubilarse INT AFTER edad ;
UPDATE gatitos_registro SET anios_para_jubilarse = 11 - edad WHERE anios_para_jubilarse IS NULL;
ALTER TABLE gatitos_registro MODIFY COLUMN anios_para_jubilarse INT NOT NULL;
ALTER TABLE gatitos_registro ALTER COLUMN anios_para_jubilarse SET DEFAULT (11-edad);
UPDATE gatitos_registro SET anios_para_jubilarse = DEFAULT ;

--8*Agregar a dos ultimos gatitos
INSERT INTO gatitos_registro (nombre,apodo,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Toffee", "Tofisito", 4, 3.4,"jugar y estar solo","blanco con gris","verdosos")
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Chucky", 10, 4.3,"dormir y caminar","naranja con blanco","amarillentos");
