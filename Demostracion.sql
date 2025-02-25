USE Recetario;

-- Menu de las Recetas
SELECT nombreTR as "Tipo", nombreReceta AS "Platillo", rendimiento AS "Rendimiento", Foto
FROM recetas, tiporeceta
WHERE idTR = idTipo;

-- Categorias
SELECT nombreTR AS "Tipo de receta" FROM tiporeceta;


-- Busqueda por plato sin Sub-recetas
CALL BuscarRecetaPorNombreSS("Quesadillas de comal y quesadillas fritas");

-- Busqueda por plato con Sub-recetas
CALL BuscarRecetaPorNombre("Quesadillas de comal y quesadillas fritas");


-- Busqueda por ingredientes
CALL BuscarRecetaPorIngrediente('Sal,Agua');

-- Busqueda por ingredientes sin que se repitan
CALL BuscarRecetaPorIngredienteNR('Aceite,Sal,Agua');


-- Busqueda por tipo de plato
CALL BuscarTipoPlato("Sopas");

-- Busqueda por tipo de ingrediente
SELECT nombreTI AS "Tipo", nombreIngrediente AS "Ingrediente"
FROM Ingredientes, tipoIngrediente
WHERE idTI = idTipo
	AND nombreTI LIKE "%lacteos%";