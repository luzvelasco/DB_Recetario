# Este archivo crea un procedimiento que busca las recetas que coinciden con 
# los ingredientes seleccionados en los parametros

-- agregar and y or para decidir si todos o solo uno etc

USE Recetario;
DROP PROCEDURE IF EXISTS BuscarRecetaPorIngrediente;

DELIMITER $$

CREATE PROCEDURE BuscarRecetaPorIngrediente(
	IN
    ingredientesBuscar TEXT
    #ingredienteBuscar CHAR(30)
    )
    
BEGIN
    SELECT 
        Recetas.idReceta,
        Recetas.nombreReceta,
        tipoReceta.nombreTR AS tipoReceta,
        Recetas.rendimiento,
        Recetas.instrucciones,
        Ingredientes.idIngrediente, -- opcional
        Ingredientes.nombreIngrediente AS ingredienteEncontrado, -- opcional
        tipoIngrediente.nombreTI AS tipoIngrediente, -- opcional
        RecetaIngredientes.cantidad, -- opcional
        RecetaIngredientes.detalles -- opcional
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
    JOIN
		tipoIngrediente
	ON Ingredientes.idTipo = tipoIngrediente.idTI
    
    #WHERE Ingredientes.nombreIngrediente = ingredienteBuscar;
    WHERE FIND_IN_SET(Ingredientes.nombreIngrediente, ingredientesBuscar) > 0;
    
END$$

CALL BuscarRecetaPorIngrediente('Sal,Agua');
