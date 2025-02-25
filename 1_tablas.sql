DROP DATABASE IF EXISTS Recetario;
CREATE DATABASE Recetario;
USE Recetario;

DROP TABLE IF EXISTS tipoIngrediente;
CREATE TABLE tipoIngrediente(
	idTI INT NOT NULL AUTO_INCREMENT,
    nombreTI CHAR(20),
    PRIMARY KEY (idTI)
);

DROP TABLE IF EXISTS tipoReceta;
CREATE TABLE tipoReceta(
	idTR INT NOT NULL AUTO_INCREMENT,
    nombreTR CHAR(20),
    PRIMARY KEY (idTR)
);

DROP TABLE IF EXISTS Recetas;
CREATE TABLE Recetas(
	idReceta INT NOT NULL AUTO_INCREMENT,
    nombreReceta CHAR(70),
    idTipo INT,
    rendimiento CHAR(20),
    instrucciones TEXT, #65,535 (216 - 1) characters
    foto LONGBLOB, #4,254,567,295 (252 -1)
    PRIMARY KEY (idReceta),
    CONSTRAINT fkTipoReceta
	FOREIGN KEY (idTipo)
		REFERENCES tipoReceta(idTR)
        ON DELETE SET NULL
        ON UPDATE CASCADE    
);

DROP TABLE IF EXISTS Ingredientes;
CREATE TABLE Ingredientes(
	idIngrediente INT NOT NULL AUTO_INCREMENT,
    nombreIngrediente CHAR(30),
    idTipo INT,
    PRIMARY KEY (idIngrediente),
	CONSTRAINT fkTipoIngrediente
    FOREIGN KEY (idTipo)
		REFERENCES tipoIngrediente(idTI)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS RecetaIngredientes;
CREATE TABLE RecetaIngredientes(
	idReceta INT,
    idIngrediente INT,
    cantidad CHAR(20),
    detalles CHAR(55),
    CONSTRAINT fkIngrediente
    FOREIGN KEY (idIngrediente)
		REFERENCES Ingredientes(idIngrediente)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
	CONSTRAINT fkReceta
    FOREIGN KEY (idReceta)
		REFERENCES Recetas(idReceta)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Subrecetas;
CREATE TABLE Subrecetas(
	idRecetaPadre INT,
    idRecetaHijo INT,
    CONSTRAINT fkRecetaPadre
    FOREIGN KEY (idRecetaPadre)
		REFERENCES Recetas(idReceta)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fkRecetaHijo
	FOREIGN KEY (idRecetaHijo)
		REFERENCES Recetas(idReceta)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
