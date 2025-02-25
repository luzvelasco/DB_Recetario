USE Recetario;

INSERT INTO tipoReceta(nombreTR) VALUES
	("Platos principales"), -- 1
	("Masas y pastas"), -- 2
	("Ensaladas"), -- 3
	("Sopas"), -- 4
	("Postres y dulces"), -- 5
	("Salsas"), -- 6
	("Bebidas"); -- 7
    
INSERT INTO tipoIngrediente(nombreTI) VALUES
	("Carnes"), -- 1
    ("Especias"), -- 2
    ("Vegetales"), -- 3
    ("Lácteos"), -- 4
    ("Cereales"), -- 5
    ("Líquido"), -- 6
    ("Dulces"), -- 7
    ("Origen animal"), -- 8
    ("Leguminosas"); -- 9
    
INSERT INTO Ingredientes(nombreIngrediente, idTipo) VALUES
	(("jamón"), (1)),
	(("azúcar"), (2)),
	(("chile en polvo"), (2)),
	(("pimienta"), (2)),
	(("sal"), (2)),
	(("ajo"), (2)),
	(("laurel"), (2)),
	(("comino"), (2)),
    (("tomillo"), (2)),
    (("orégano"), (2)),
	(("chipilín"), (2)),
	(("epazote"), (2)),
	(("mango"), (3)),
	(("papa"), (3)),
	(("espinaca"), (3)),
	(("tomate morado"), (3)),
	(("pepino"), (3)),
	(("limón"), (3)),
    (("tomate"), (3)),
	(("jitomate"), (3)),
	(("lechuga"), (3)),
	(("cebolla"), (3)),
	(("yuca"), (3)),
    (("coliflor"), (3)),
    (("champiñón"), (3)),
    (("zanahoria"), (3)),
	(("hojas de chaya"), (3)),
	(("chile puya"), (3)),
    (("chile jalapeño"), (3)),
    (("chile de árbol"), (3)),
    (("chile habanero"), (3)),
	(("flor de calabaza"), (3)),
	(("granos de elote"), (3)),
	(("leche condensada"), (4)),
	(("yogur griego"), (4)),
	(("leche evaporada"), (4)),
	(("mantequilla"), (4)),
	(("queso crema"), (4)),
	(("queso cotija"), (4)),
	(("queso añejo"), (4)),
	(("queso oaxaca"), (4)),
	(("crema ácida"), (4)),
	(("soletas"), (5)),
	(("palomitas de maíz"), (5)),
	(("masa de maíz"), (5)),
	(("pan molido"), (5)),
	(("agua"), (6)),
	(("aceite de oliva"), (6)),
	(("aceite"), (6)),
    (("vinagre"), (6)),
	(("dulce de leche"), (7)),
	(("chocolate semiamargo"), (7)),
	(("jarabe de maíz"), (7)),
	(("grenetina"), (8)),
	(("caldo de pollo"), (8)),
	(("huevo"), (8)),
	(("manteca"), (8)),
	(("consomé de pollo en polvo"), (8)),
	(("cacahuate"), (9)),
	(("frijoles negros"), (9)),
	(("nueces pecanas"), (9));
    
INSERT INTO Recetas(nombreReceta, idTipo, rendimiento, instrucciones, foto) VALUES
	("Sopa de chaya", 4, "4 porciones", 
    "1. Caliente el aceite en una cacerola y sofría las hojas de chaya. 
	2. Añada el caldo de pollo, las rebanadas de papa, y sazone con sal y pimienta de Tabasco; hierva a fuego medio por 8 minutos y retire del fuego. 
	3. Sirva caliente y decore con las esferas de queso cubiertas con chile en polvo.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SopaDeChaya.png")),
    ("Sopa de Chipilín", 4, "4 porciones", 
    "1. Mezcle la masa de maíz con 3 cucharadas de manteca y forme esferas de 1 centímetro. 
	2. Separe las hojas de chipilín de los tallos, lávelas bien y escúrralas. 
	3. Caliente la manteca restante en una cacerola y acitrone la cebolla y el ajo. Agregue las hojas de chipilín, el agua caliente, el consomé de pollo, los granos de elote y la sal; cueza por 10 minutos a fuego medio. 
	4. Incorpore las esferas de masa a la sopa y cueza por 8 minutos más. Rectifique la cantidad de sal y retire del fuego. Sirva en platos hondos.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SopaDeChipilin.png")),
    ("Sopa de yuca", 4, "4 porciones",
    "1. Caliente el aceite en una cacerola y añada 300 g de yuca, el ajo, las hojas de laurel, el comino y sal; cueza durante 6 minutos y retire del fuego. 
	2. Deseche las hojas de laurel y licue la yuca y el ajo con el caldo de pollo. Vierta la sopa en la cacerola, rectifique la cantidad de sal y hierva por 8 minutos. 
	3. Caliente el aceite en un sartén y fría los cubos de yuca restantes; retírelos del fuego y colóquelos sobre papel absorbente. 
	4. Sirva la sopa en platos hondos y acompañe con los cubos de yuca fritos.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SopaDeYuca.png")),
    ("Salsa de cacahuate", 6, "10 porciones",
    "1. Coloque en una olla los jitomates y los chiles, cúbralos con agua y cueza hasta que los jitomates estén suaves; escurra y reserve el líquido de cocción.
	2. Licue los jitomates y los chiles con el resto de los ingredientes; si es necesario, agregue un poco del líquido de cocción. Rectifique la cantidad de sal, deje enfriar y conserve en refrigeración.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SalsaCacahuate.png")),
    ("Salsa verde", 6, "10 porciones",
    "Ase en un comal los tomates, los chiles habaneros y el ajo; lícuelos con sal y, si es necesario, agregue un poco de agua. Rectifique la cantidad de sal, deje enfriar y conserve en refrigeración.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SalsaVerde.png")),
    ("Salsa de chile de árbol", 6, "10 porciones",
    "1. Caliente el aceite en un sartén y fría los chiles sin quemarlos; agregue la cebolla y el ajo y saltee hasta que se doren ligeramente.
	2. Añada el agua y hierva durante 3 minutos; retire del fuego y licue con el resto de los ingredientes. Rectifique la cantidad de sal, deje enfriar y conserve en refrigeración.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\SalsaChileDeArbol.png")),
    ("Chiles en escabeche", 6, "10 porciones",
    "1. Caliente en una olla el aceite de oliva y saltee el ajo, la cebolla y las rodajas de zanahoria hasta que se doren ligeramente. 
	2. Agregue el resto de los ingredientes y cueza hasta que los vegetales estén suaves, pero no sobrecocidos. 
	3. Retire del fuego, coloque todos los ingredientes en un frasco, ciérrelo, deje enfriar y conserve en refrigeración.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\ChilesEscabeche.png")),
    ("Masa para quesadillas", 2, "6 porciones",
    "Amase la masa con la manteca y la sal hasta que se integren los ingredientes y la mezcla no se pegue en las manos. Reserve.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\MasaQuesadillas.png")),
    ("Relleno de flor de calabaza", 2, "6 porciones",
    "Caliente el aceite en un sartén y acitrone la cebolla; añada la flor de calabaza y cocine por 5 minutos más. Agregue el epazote y la sal y reserve.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\RellenoFlorDeCalabaza.png")),
    ("Quesadillas de comal y quesadillas fritas", 1, "6 porciones",
    "1. Para las quesadillas de comal, haga esferas de 3 centímetros con la mitad de la masa, y forme tortillas con la máquina tortilladora. Coloque las tortillas sobre el comal y cueza por ambos lados. Ponga sobre las tortillas cocidas 1 cucharada de queso Oaxaca y 1 cucharada del relleno, ya sea de flor de calabaza o frijoles; doble la tortilla por la mitad y retire del fuego cuando el queso se haya derretido. Acompañe con salsa de chile de árbol
	2. Para las quesadillas fritas, haga esferas de 3 centímetros con la masa restante, y forme tortillas con la máquina tortilladora.
	3. Rellene las tortillas crudas con queso Oaxaca y con flor de calabaza o frijoles, dóblelas y presione las orillas para sellarlas.
	4. Fría las quesadillas en aceite caliente hasta que se doren y colóquelas sobre papel absorbente para retirar el exceso de grasa.
	5. Acompañe las quesadillas fritas con lechuga, crema y salsa de chile de árbol. Sirva de inmediato.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\Quesadillas.png")),
    ("Tortitas de papa", 1, "2 porciones",
    "1. Ponga a hervir las papas en suficiente agua. Cuando estén suaves, retírelas del agua y deje que se entibien. Pélelas y machaquelas hasta obtener un puré.
	2. Mezcle la papa hecha puré con el jamón, el huevo, el queso, el pan molido, la sal y pimienta al gusto. Forme con esta mezcla tortitas, comenzando con una pequeña esfera que irá aplastando poco a poco entre las manos hasta obtener un disco de 6 centímetros de diámetro y 1.5 centímetros de alto aproximadamente.
	3.  Fría en el aceite las tortitas hasta que se doren ligeramente por ambos lados y déjelas escurrir sobre papel absorbente. 
	4. Acompañe las tortitas de papa con ensalada de lechugas.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\ToritasDePapa.png")),
    ("Ensalada de lechuga", 3, "3 porciones",
    "1. Lava muy bien la lechuga antes de usarla. Haz lo mismo con la espinaca.
	2. Una vez estén limpias rompe las hojas con las manos y ponlas en un bol grande, tanto la lechuga como las espinacas.
	3. Pica la cebolla en rodajas y échala en el bol.
	4. Pica también el tomate y el pepino en ruedas y del mismo modo, ponlos en el bol.
	5. Ahora simplemente agrega el limón, sal al gusto y un buen chorro de aceite de oliva.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\EnsaladaDeLechuga.png")),
    ("Palomitas acarameladas", 5, "8-12 porciones",
    "1. Coloca sobre el fuego una olla con todos los ingredientes, excepto las palomitas, y deja que hiervan, moviéndolos continuamente, hasta que se forme un caramelo. Retíralo del fuego y viértelo de inmediato sobre las palomitas. Muévelas, para que se cubran totalmente de caramelo. 
	2. Extiende las palomitas en una charola con papel siliconado y deja que se enfríen. Sepáralas y resérvalas.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\PalomitasAcarameladas.png")),
	("Flan de dulce de leche", 5, "8-12 porciones",
    " 1. Enciende el hormo a 180 °C. 
	2. Cubre con los 250 gramos de dulce de leche el interior de moldes individuales para flan con ayuda de una brocha. Reserva. 
	3. Licua los 80 gramos de dulce de leche con los ingredientes restantes. Transfiere esta mezcla a los moldes. Tápalos con papel aluminio y colócalos dentro de un recipiente con agua, de manera que ésta llegue a la mitad de la altura de los moldes. 
	4. Hornea los flanes a baño María durante 30 minutos o hasta que estén firmes. Retíralos del horno, deja que se enfríen y desmóldalos. 
	5. Derrite el chocolate a baño María o en el microondas en lapsos de 10 segundos. 
	6. Sirve los flanes decorados con dulce de leche, el chocolate fundido, las nueces y las palomitas acarameladas.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\FlanDulceDeLeche.png")),
    ("Carlota de mango", 5, "1 postre",
    "1. Licúe la leche condensada, la pulpa de mango y el yogur griego. 
	2. Agregue la grenetina al agua, colóquela a baño María y mezcle hasta que esté completamente disuelta. 
	3. Añada la grenetina disuelta a la mezcla de mango, continúe licuando hasta integrar y reserve. 
	4. En un molde circular, coloque las soletas alrededor y forme una capa en el fondo, agregue un poco del Relleno de mango y cubos de mango, forme otra capa con soletas y continúe hasta terminar con la mezcla. 
	5. Termine con las rebanadas de mango y refrigere por 1 hora.", 
    LOAD_FILE("C:\\ProgramData\\MySQL\\MySQL Server 8.4\\Uploads\\recetario\\CarlotaDeMango.png"));
    
INSERT INTO Subrecetas(idRecetaPadre, idRecetaHijo) VALUES
	(10, 4),
    (10, 5),
    (10, 6),
    (10, 7),
    (10, 8),
    (10, 9),
    (11, 12);
    
INSERT INTO RecetaIngredientes(idReceta, idIngrediente, cantidad, detalles) VALUES
	(1, 49, "2 cucharadas", NULL),
    (1, 27, "250 gramos", NULL),
    (1, 14, "1/2 kilogramo", "cocidas, peladas y rebanadas"),
    (1, 5, "al gusto", NULL),
    (1, 4, "al gusto", "de Tabasco, molida"),
    (1, 38, "4 esferas", "cubiertas con chile en polvo"),
    (1, 55, "1 litro", NULL),
    (2, 45, "150 gramos", "nixtamalizado"),
    (2, 57, "5 cucharadas", NULL),
    (2, 11, "1 manojo", NULL),
    (2, 22, "100 gramos", "picados finamente"),
    (2, 6, "3 dientes", "picados finamente"),
    (2, 47, "1 litro", "caliente"),
    (2, 58, "20 gramos", NULL),
    (2, 33, "50 gramos", NULL),
    (2, 5, "al gusto", NULL),
    (3, 48, "20 mililitros", NULL),
    (3, 23, "350 gramos", "cocida, pelada y cortada en cubos pequeños"),
    (3, 6, "4 cucharadas", "picado finamente"),
    (3, 7, "2 hojas", NULL),
    (3, 8, "1 pizca", NULL),
    (3, 55, "1 litro", NULL),
    (3, 5, "al gusto", NULL),
    (3, 49, "cantidad suficiente", NULL),
    (4, 20, "4", NULL),
    (4, 28, "6", "sin venas ni semillas"),
    (4, 22, "1/2", NULL),
    (4, 6, "3 dientes", NULL),
    (4, 5, "al gusto", NULL),
    (4, 59, "300 gramos", "pelados y tostados"),
    (5, 19, "300 gramos", NULL),
    (5, 31, "3", "sin venas ni semillas"),
    (5, 6, "2 dientes", NULL),
    (5, 5, "al gusto", NULL),
    (5, 47, "cantidad suficiente", NULL),
    (6, 49, "1 1/2 cucharadas", NULL),
    (6, 30, "15", "sin venas ni semillas"),
    (6, 22, "1/2", "fileteada"),
    (6, 6, "4 dientes", NULL),
    (6, 47, "300 mililitros", NULL),
    (6, 8, "1/2 cucharadita", NULL),
    (6, 10, "1/2 cucharadita", "seco"),
    (6, 9, "1/2 cucharadita", "seco"),
    (6, 4, "1/2 cucharadita", "negra molida"),
    (6, 5, "al gusto", NULL),
    (7, 48, "2 cucharadas", NULL),
    (7, 6, "4 dientes", NULL),
    (7, 22, "1", "fileteada"),
    (7, 26, "2", "cortadas en rodajas"),
    (7, 29, "15", "sin venas ni semillas, cortados en cuartos a lo largo"),
    (7, 25, "10", "cortados en cuartos"),
    (7, 24, "1/2", "cortada en floretes pequeños"),
    (7, 50, "1 litro", NULL),
    (7, 47, "1 taza", NULL),
    (7, 4, "1/2 cucharadita", "negra molida"),
    (7, 4, "5 bolitas", "de Tabasco"),
    (7, 7, "2 hojas", NULL),
    (7, 5, "al gusto", NULL),
    (8, 45, "500 gramos", "nixtamalizado"),
    (8, 57, "600 gramos", NULL),
    (8, 5, "al gusto", NULL),
    (9, 49, "2 cucharadas", NULL),
	(9, 22, "1/4 de taza", "picada finamente"),
	(9, 32, "200 g", "sin tallos ni pistilos, picadas"),
	(9, 12, "1 rama", "picada finamente"),
	(9, 5, "al gusto", NULL),    
    (10, 60, "150 g", "refritos"),
    (10, 41, "300 g", "deshebrado"),
    (10, 49, "cantidad suficiente", "para freír"),
    (10, 21, "1 taza", "picada (opcional)"),
    (10, 42, "200 g", "(opcional)"),    
    (11, 14, "500 g", NULL),
    (11, 1, "150 g", "cortado en cubos pequeños"),
    (11, 56, "1", NULL),
    (11, 39, "1/2 taza", "rallado"),
    (11, 46, "1/2 taza", NULL),
    (11, 5, "1/2 cucharada", NULL),
    (11, 4, "al gusto", NULL),
    (11, 49, "1 taza", NULL),
    (12, 21, "1/2", "fresca"),
    (12, 15, "algunas hojas ", NULL),
    (12, 19, "3", "medianos"),
    (12, 22, "1", "morada"),
    (12, 17, "1", "mediano"),
    (12, 18, "1/2", NULL),
    (12, 48, "al gusto", NULL),
    (12, 5, "al gusto", NULL),
	(13, 37, "200 g", NULL),
	(13, 2, "400 g ", NULL),
	(13, 5, "4 g", NULL),
	(13, 53, "130 ml ", NULL),
	(13, 44, "100 g", NULL),
    (14, 51, "250 g", NULL),
    (14, 51, "80 g", NULL),
    (14, 36, "360 ml", NULL),
    (14, 34, "380 g", NULL),
    (14, 38, "250 g", NULL),
    (14, 56, "6", NULL),
    (14, 52, "al gusto", NULL),
    (14, 61, "al gusto", NULL),
    (14, 51, "al gusto", NULL),
	(15, 34, "375 g", NULL),
	(15, 13, "1/2 kg", "pulpa"),
	(15, 35, "150 g", NULL),
	(15, 54, "14 g", NULL),
	(15, 47, "1/2 taza", NULL),
	(15, 43, "2 paquetes", NULL),
	(15, 13, "250 g", "en cubos"),
	(15, 13, "cantidad suficiente", "rebanado");