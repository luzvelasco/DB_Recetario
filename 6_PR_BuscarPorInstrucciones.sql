USE Recetario;
DROP PROCEDURE IF EXISTS BuscarRecetaPorInstruccion;

DELIMITER $$

CREATE PROCEDURE BuscarRecetaPorInstruccion(
    IN
		instruccionClave TEXT
)
BEGIN
    SELECT
		Recetas.idReceta,
		Recetas.nombreReceta,
        tipoReceta.nombreTR AS tipoReceta, 
		Recetas.rendimiento,
        Recetas.instrucciones
    FROM Recetas
    JOIN tipoReceta ON Recetas.idTipo = tipoReceta.idTR
    WHERE Recetas.instrucciones LIKE CONCAT('%', instruccionClave, '%');
END$$

DELIMITER ;

CALL BuscarRecetaPorInstruccion('Caliente')