# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# el tipo de plato seleccionados en los parametros

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarTipoPlato;

DELIMITER $$

CREATE PROCEDURE BuscarTipoPlato(
	IN
    tipoBuscar TEXT
    #ingredienteBuscar CHAR(30)
    )
    
BEGIN
	etiqueta: BEGIN

	DECLARE tipoID INT;    
    
    SELECT idTR FROM tiporeceta where nombreTR = tipoBuscar into tipoID;
    
    IF (tipoID IS NULL) THEN
		SELECT "No se encontró ese tipo de plato" as "Error";
        LEAVE etiqueta;
	END IF;
    

    
    SELECT nombreReceta as "Receta", rendimiento as "Rendimiento", instrucciones as "Instrucciones"
    ,(SELECT GROUP_CONCAT(nombreIngrediente SEPARATOR '
')
	 FROM ingredientes, recetaingredientes
	 where ingredientes.idIngrediente = recetaingredientes.idIngrediente
	 and recetaingredientes.idReceta = recetas.idReceta) as "Ingredientes" 
     , foto "Foto"
    
    FROM recetas 
    where idTipo = tipoID;
    


	END etiqueta;
END$$

CALL BuscarTipoPlato("Sopas");





