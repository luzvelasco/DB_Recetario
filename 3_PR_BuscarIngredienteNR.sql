# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# los ingredientes seleccionados en los parametros sin que se repitan

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarRecetaPorIngredienteNR;

DELIMITER $$

CREATE PROCEDURE BuscarRecetaPorIngredienteNR(
	IN
    listaIngredientes TEXT
    )
    
BEGIN
	
    # checa la longitud de la lista de ingredientes en los parametros
    DECLARE contadorIngredientes INT;
    SET contadorIngredientes = (LENGTH(listaIngredientes) - LENGTH(REPLACE(listaIngredientes, ',', '')) + 1);

    SELECT DISTINCT
		Recetas.idReceta,
        Recetas.nombreReceta,
        tipoReceta.nombreTR AS tipoReceta,
        Recetas.rendimiento,
        Recetas.instrucciones
    FROM Recetas
    
    JOIN
		RecetaIngredientes
    ON Recetas.idReceta = RecetaIngredientes.idReceta
    JOIN
		Ingredientes
    ON RecetaIngredientes.idIngrediente = Ingredientes.idIngrediente
    JOIN
		tipoReceta
    ON Recetas.idTipo = tipoReceta.idTR
    
    WHERE
		FIND_IN_SET(Ingredientes.nombreIngrediente, listaIngredientes) > 0
    GROUP BY
		Recetas.idReceta
    HAVING
		COUNT(DISTINCT Ingredientes.idIngrediente) = contadorIngredientes;
END$$

CALL BuscarRecetaPorIngredienteNR('Aceite,Sal,Agua');
	