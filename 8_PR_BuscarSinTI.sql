# Este archivo crea un procedimiento que busca las recetas que 
# no contienen los ingredientes del tipo seleccionados en los parametros

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarSinTI;

DELIMITER $$
CREATE PROCEDURE BuscarSinTI(
	IN
    listaIngredientes TEXT
    )
BEGIN

	SELECT DISTINCT
        Recetas.nombreReceta AS Receta,
        tipoReceta.nombreTR AS Categoria,
        Recetas.rendimiento AS Rendimiento,
        (SELECT GROUP_CONCAT(nombreIngrediente SEPARATOR '
')	FROM ingredientes JOIN recetaingredientes using(idIngrediente)
	where recetaingredientes.idReceta = recetas.idReceta) AS "Ingredientes", 
	Recetas.instrucciones AS Instrucciones,
	foto "Foto"
    FROM Recetas
    
    JOIN RecetaIngredientes USING (idReceta)
    JOIN Ingredientes USING (idIngrediente)
    JOIN tipoReceta USING (idTR)
    JOIN tipoIngrediente USING (idTI)
    
    WHERE idReceta NOT IN (
	SELECT idReceta FROM recetas
    JOIN RecetaIngredientes USING (idReceta)
    JOIN Ingredientes USING (idIngrediente)
    JOIN tipoIngrediente USING (idTI)
	WHERE FIND_IN_SET(nombreTI, listaIngredientes) > 0
	);

END$$

CALL BuscarSinTI("origen animal,carnes,lácteos")
