
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
INSERT INTO gatitos_registro (nombre,edad,peso,gustos,color_de_pelaje,color_de_ojos) VALUES ("Nathan", 7, 4.5,"esconderse","negro","amarillentos")

-- 2* Como no todos los gatitos tienen un apodo entonces modificar la tabla para que por defecto aparezca que no tienen

ALTER TABLE gatitos_registro ALTER COLUMN apodo SET DEFAULT 'no tiene apodo';
UPDATE gatitos_registro SET apodo = DEFAULT WHERE apodo is null;
ALTER TABLE gatitos_registro MODIFY COLUMN apodo VARCHAR (20) NOT NULL;
-- Repito la misma linea de código para establecer un default a "apodo"
ALTER TABLE gatitos_registro ALTER COLUMN apodo SET DEFAULT 'no tiene apodo';