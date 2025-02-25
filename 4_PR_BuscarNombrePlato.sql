# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# el nombre de la receta seleccionadas en los parametros

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarRecetaPorNombre;

DELIMITER $$

CREATE PROCEDURE BuscarRecetaPorNombre(
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
	SELECT CONCAT("Instrucciones ", nombreReceta, ": 
	", instrucciones)
    FROM recetaingredientes, recetas
    where recetaingredientes.idReceta in (   
    SELECT idRecetaHijo FROM subrecetas where idRecetaPadre = recetaID)
    and recetas.idReceta = recetaingredientes.idReceta
    UNION
    SELECT CONCAT("- ", cantidad, " de ", nombreIngrediente, " ", IFNULL(detalles, '')) as Receta
    FROM ingredientes, recetaingredientes
    where ingredientes.idIngrediente = recetaingredientes.idIngrediente
    and recetaingredientes.idReceta = recetaID
    UNION
	SELECT CONCAT("- ", cantidad, " de ", nombreIngrediente, " ", IFNULL(detalles, '')) 
    FROM recetaingredientes, ingredientes
    where recetaingredientes.idReceta in (   
    SELECT idRecetaHijo FROM subrecetas where idRecetaPadre = recetaID)
    and ingredientes.idIngrediente = recetaingredientes.idIngrediente;

	END etiqueta;
END$$

CALL BuscarRecetaPorNombre("Tortitas de papa");
CALL BuscarRecetaPorNombre("Quesadillas de comal y quesadillas fritas");
-- CALL BuscarRecetaPorNombre("Ensalada de lechuga");





