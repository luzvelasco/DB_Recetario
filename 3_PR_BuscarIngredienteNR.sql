# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# los ingredientes seleccionados en los parametros sin que se repitan

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarPorIngredienteNR;

DELIMITER $$
CREATE PROCEDURE BuscarPorIngredienteNR(
	IN
    listaIngredientes TEXT
    )
    
BEGIN
    # checa la longitud de la lista de ingredientes en los parametros
    DECLARE contadorIngredientes INT;
    SET contadorIngredientes = (LENGTH(listaIngredientes) - LENGTH(REPLACE(listaIngredientes, ',', '')) + 1);

	SELECT DISTINCT
		Recetas.idReceta,
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
    JOIN tipoReceta USING(idTR)
    
    WHERE
		(FIND_IN_SET(Ingredientes.nombreIngrediente, listaIngredientes) > 0)
    GROUP BY
		Recetas.idReceta
    HAVING
		COUNT(DISTINCT Ingredientes.idIngrediente) = contadorIngredientes
	;
END$$

CALL BuscarPorIngredienteNR('Aceite,Sal,Agua');
CALL BuscarPorIngredienteNR('Sal,Agua');

	