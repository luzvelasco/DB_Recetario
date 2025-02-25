# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# el nombre de la receta seleccionadas en los parametros

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarRecetaPorNombreSS;

DELIMITER $$

CREATE PROCEDURE BuscarRecetaPorNombreSS(
	IN
    recetaBuscar TEXT
    #ingredienteBuscar CHAR(30)
    )
    
BEGIN
	etiqueta: BEGIN

	DECLARE recetaID INT;
    DECLARE subrecetas INT;
    
    SET @recetaBuscarVAR = recetaBuscar;
    
    SELECT idReceta FROM recetas where nombreReceta = recetaBuscar into recetaID;
    
    IF (recetaID IS NULL) THEN
		SELECT "No se encontró la receta" as "Error";
        LEAVE etiqueta;
	END IF;
    
    
    SELECT recetaBuscar as Receta
    UNION
    
	SELECT CONCAT("Instrucciones:
    ", instrucciones) FROM Recetas where idReceta = recetaID    
    UNION
    SELECT CONCAT("- ", cantidad, " de ", nombreIngrediente, " ", IFNULL(detalles, '')) as Receta
    FROM ingredientes, recetaingredientes
    where ingredientes.idIngrediente = recetaingredientes.idIngrediente
    and recetaingredientes.idReceta = recetaID;


	END etiqueta;
END$$

CALL BuscarRecetaPorNombreSS("Toritas de papa");
