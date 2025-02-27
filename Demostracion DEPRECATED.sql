USE Recetario;

-- Menu de las Recetas
SELECT nombreTR as "Tipo", nombreReceta AS "Platillo", rendimiento AS "Rendimiento", Foto
FROM recetas join tiporeceta using(idTR);

-- Categorias
SELECT nombreTR AS "Tipo de receta" FROM tiporeceta;


-- Busqueda por plato sin Sub-recetas
CALL BuscarRecetaPorNombreSS("Quesadillas de comal y quesadillas fritas");

-- Busqueda por plato con Sub-recetas
CALL BuscarRecetaPorNombre("Quesadillas de comal y quesadillas fritas");


-- Busqueda por ingredientes, AND
CALL BuscarPorIngrediente('Aceite,Sal,Agua');


-- Busqueda por ingredientes
CALL BuscarPorIngredienteEXCL('Sal,Agua');


-- Busqueda por tipo de plato
CALL BuscarTipoPlato("Sopas");

-- Busqueda por tipo de ingrediente
SELECT nombreTI AS "Tipo", nombreIngrediente AS "Ingrediente"
FROM Ingredientes, tipoIngrediente
WHERE idTI = idTipo
	AND nombreTI LIKE "%lacteos%";