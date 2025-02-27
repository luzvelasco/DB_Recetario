# Este archivo crea un procedimiento que busca las recetas que 
# no contienen los ingredientes seleccionados en los parametros

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarSinIngrediente;

DELIMITER $$
CREATE PROCEDURE BuscarSinIngrediente(
	IN
    listaIngredientes TEXT
    )
BEGIN
    # checa la longitud de la lista de ingredientes en los parametros
    DECLARE contadorIngredientes INT;
    SET contadorIngredientes = (LENGTH(listaIngredientes) - LENGTH(REPLACE(listaIngredientes, ',', '')) + 1);
    
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
	SELECT idReceta FROM VistaRecetaSimple
	WHERE FIND_IN_SET(receta, listaIngredientes) > 0
	GROUP BY idReceta
    HAVING
		COUNT(DISTINCT receta) = contadorIngredientes);

END$$

CALL BuscarSinIngrediente("aceite")

