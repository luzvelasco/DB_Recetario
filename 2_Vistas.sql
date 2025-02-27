-- vistas


DROP VIEW IF EXISTS VistaRecetaSimple;
CREATE VIEW VistaRecetaSimple AS
(SELECT idReceta, nombreReceta AS "receta" FROM recetas
UNION ALL
SELECT idReceta, nombreIngrediente FROM Ingredientes join RecetaIngredientes using(idIngrediente)
UNION ALL
SELECT idReceta, instrucciones FROM recetas) order by idReceta;


DROP VIEW IF EXISTS VistaRecetaEstilo;
CREATE VIEW VistaRecetaEstilo AS
(SELECT idReceta, CONCAT("Receta: ", nombreReceta) AS "receta" FROM recetas 
UNION ALL
SELECT idReceta, CONCAT("- ", cantidad, " de ", nombreIngrediente, " ", IFNULL(detalles, '')) 
	FROM Ingredientes JOIN RecetaIngredientes USING(idIngrediente)
UNION ALL
SELECT idReceta, CONCAT("Instrucciones: ", instrucciones) FROM recetas) ORDER BY idReceta;


