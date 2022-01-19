-- Database creation

DROP DATABASE IF EXISTS mvc_basics;
CREATE DATABASE IF NOT EXISTS mvc_basics;
USE mvc_basics;



-- Creation of the tables

CREATE TABLE types(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(25) NOT NULL,
img VARCHAR(200)
);

CREATE TABLE pokemon(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
tipo1 int,
tipo2 int,
avatar VARCHAR(200),
FOREIGN KEY (tipo1) REFERENCES types(id),
FOREIGN KEY (tipo2) REFERENCES types(id)
);

CREATE TABLE TabTypes(
tipoA INT,
Efect VARCHAR("10"),
tipoE INT,
FOREIGN KEY (tipoA) REFERENCES types(id),
FOREIGN KEY (tipoE) REFERENCES types(id)
);

INSERT INTO TabTypes VALUES
(1,"EF",9),
(1,"EF",14),
(1,"EF",8),
(1,"NEF",2),
(1,"NEF",5),
(1,"NEF",7),
(1,"NEF",1),
(1,"DB",16),
(1,"DB",7),
(1,"DB",10),
(1,"IN",17),
(2,"EF",14),
(2,"EF",16),
(2,"EF",7),
(2,"NEF",2),
(2,"NEF",12),
(2,"NEF",4),
(2,"DB",12),
(2,"DB",5),
(3,"EF",12),
(3,"EF",13),
(3,"EF",15),
(3,"NEF",1),
(3,"NEF",18),
(3,"NEF",7),
(3,"NEF",10),
(3,"NEF",8),
(3,"NEF",17),
(3,"NEF",6),
(3,"DB",18),
(3,"DB",14),
(3,"DB",7),
(4,"EF",4),
(4,"NEF",1),
(4,"DB",4),
(4,"DB",8),
(4,"DB",9),
(5,"EF",18),
(5,"EF",2),
(5,"NEF",4),
(5,"NEF",5),
(5,"NEF",12),
(5,"DB",16),
(6,"EF",6),
(6,"EF",13),
(6,"NEF",15),
(6,"DB",6),
(6,"DB",15),
(6,"IN",10),
(6,"IN",11),
(7,"EF",1),
(7,"EF",9),
(7,"EF",12),
(7,"EF",3),
(7,"NEF",2),
(7,"NEF",14),
(7,"NEF",7),
(7,"NEF",4),
(7,"DB",2),
(7,"DB",14),
(7,"DB",16),
(8,"EF",10),
(8,"EF",15),
(8,"NEF",1),
(8,"NEF",7),
(8,"NEF",17),
(8,"DB",1),
(8,"DB",17),
(8,"IN",4),
(9,"EF",18),
(9,"EF",12),
(9,"EF",16),
(9,"EF",4),
(9,"NEF",1),
(9,"NEF",2),
(9,"NEF",9),
(9,"NEF",7),
(9,"DB",1),
(9,"DB",14),
(9,"DB",7),
(9,"DB",10),
(10,"EF",1),
(10,"EF",9),
(10,"EF",11),
(10,"EF",14),
(10,"EF",15),
(10,"NEF",18),
(10,"NEF",3),
(10,"NEF",8),
(10,"NEF",13),
(10,"NEF",17),
(10,"DB",18),
(10,"DB",8),
(10,"DB",13),
(11,"NEF",1),
(11,"NEF",14),
(11,"DB",10),
(11,"IN",5),
(12,"EF",2),
(12,"EF",14),
(12,"EF",16),
(12,"NEF",1),
(12,"NEF",18),
(12,"NEF",12),
(12,"NEF",3),
(12,"NEF",7),
(12,"NEF",17),
(12,"NEF",4),
(12,"DB",18),
(12,"DB",9),
(12,"DB",3),
(12,"DB",17),
(13,"EF",10),
(13,"EF",17),
(13,"NEF",1),
(13,"NEF",13),
(13,"DB",3),
(13,"DB",6),
(13,"DB",15),
(14,"EF",18),
(14,"EF",9),
(14,"EF",3),
(14,"EF",7),
(14,"NEF",1),
(14,"NEF",16),
(14,"NEF",10),
(14,"DB",1),
(14,"DB",2),
(14,"DB",12),
(14,"DB",16),
(14,"DB",10),
(15,"EF",13),
(15,"EF",6),
(15,"NEF",10),
(15,"NEF",8),
(15,"NEF",15),
(15,"DB",10),
(15,"DB",3),
(15,"DB",8),
(15,"IN",13),
(16,"EF",1),
(16,"EF",5),
(16,"EF",14),
(16,"EF",7),
(16,"EF",17),
(16,"NEF",3),
(16,"NEF",12),
(16,"DB",2),
(16,"DB",9),
(16,"DB",12),
(16,"IN",5),
(17,"EF",12),
(17,"EF",8),
(17,"NEF",14),
(17,"NEF",16),
(17,"NEF",17),
(17,"NEF",6),
(17,"DB",16),
(17,"DB",13),
(17,"DB",13),
(18,"EF",12),
(18,"EF",3),
(18,"EF",10),
(18,"NEF",1),
(18,"NEF",5),
(18,"NEF",14),
(18,"DB",9),
(18,"DB",5),
(18,"DB",14),
(18,"IN",16);




INSERT INTO types VALUES
(1,"ACERO","gris"),
(2,"AGUA","gris"),
(3,"BICHO","gris"),
(4,"DRAGON","gris"),
(5,"ELECTRICO","gris"),
(6,"FANTASMA","gris"),
(7,"FUEGO","gris"),
(8,"HADA","gris"),
(9,"HIELO","gris"),
(10,"LUCHA","gris"),
(11,"NORMAL","gris"),
(12,"PLANTA","gris"),
(13,"PSIQUICO","gris"),
(14,"ROCA","gris"),
(15,"SINIESTRO","gris"),
(16,"TIERRA","gris"),
(17,"VENENO","gris"),
(18,"VOLADOR","gris");


INSERT INTO pokemon VALUES
(001,"Bulbasaur",12,17,"img"),
(002,"Ivysaur",12,17,"img"),
(003,"Venusaur",12,17,"img"),
(004,"Charmander",7,7,"img"),
(005,"Charmeleon",7,7,"img"),
(006,"Charizard",7,18,"img"),
(007,"Squirtle",2,2,"img"),
(008,"Wartortle",2,2,"img"),
(009,"Blastoise",2,2,"img"),
(010,"Caterpie",3,3,"img"),
(011,"Metapod",3,3,"img"),
(012,"Butterfree",3,18,"img"),
(013,"Weedle",3,17,"img"),
(014,"Kakuna",3,17,"img"),
(015,"Beedrill",3,17,"img"),
(016,"Pidgey",11,18,"img"),
(017,"Pidgeotto",11,18,"img"),
(018,"Pidgeot",11,18,"img"),
(019,"Rattata",11,11,"img"),
(020,"Raticate",11,11,"img"),
(021,"Spearow",11,18,"img"),
(022,"Fearow",11,18,"img"),
(023,"Ekans",17,17,"img"),
(024,"Arbok",17,17,"img"),
(025,"Pikachu",5,5,"img"),
(026,"Raichu",5,5,"img"),
(027,"Sandshrew",16,16,"img"),
(028,"Sandslash",16,16,"img"),
(029,"Nidoran.F",17,17,"img"),
(030,"Nidorina",17,17,"img"),
(031,"Nidoqueen",17,16,"img"),
(032,"Nidoran.M",17,17,"img"),
(033,"Nidorino",17,17,"img"),
(034,"Nidoking",17,16,"img"),
(035,"Clefairy",8,8,"img"),
(036,"Clefable",8,8,"img"),
(037,"Vulpix",7,7,"img"),
(038,"Ninetales",7,7,"img"),
(039,"Jigglypuff",11,8,"img"),
(040,"Wigglytuff",11,8,"img"),
(041,"Zubat",17,18,"img"),
(042,"Golbat",17,18,"img"),
(043,"Oddish",12,17,"img"),
(044,"Gloom",12,17,"img"),
(045,"Vileplume",12,17,"img"),
(046,"Paras",3,12,"img"),
(047,"Parasect",3,12,"img"),
(048,"Venonat",3,17,"img"),
(049,"Venomoth",3,17,"img"),
(050,"Diglett",16,16,"img"),
(051,"Dugtrio",16,16,"img"),
(052,"Meowth",11,11,"img"),
(053,"Persian",11,11,"img"),
(054,"Psyduck",2,2,"img"),
(055,"Golduck",2,2,"img"),
(056,"Mankey",10,10,"img"),
(057,"Primeape",10,10,"img"),
(058,"Growlithe",7,7,"img"),
(059,"Arcanine",7,7,"img"),
(060,"Poliwag",2,2,"img"),
(061,"Poliwhirl",2,2,"img"),
(062,"Poliwrath",2,13,"img"),
(063,"Abra",13,13,"img"),
(064,"Kadabra",13,13,"img"),
(065,"Alakazam",13,13,"img"),
(066,"Machop",10,10,"img"),
(067,"Machoke",10,10,"img"),
(068,"Machamp",10,10,"img"),
(069,"Bellsprout",12,17,"img"),
(070,"Weepinbell",12,17,"img"),
(071,"Victreebel",12,17,"img"),
(072,"Tentacool",2,17,"img"),
(073,"Tentacruel",2,17,"img"),
(074,"Geodude",14,16,"img"),
(075,"Graveler",14,16,"img"),
(076,"Golem",14,16,"img"),
(077,"Ponyta",7,7,"img"),
(078,"Rapidash",7,7,"img"),
(079,"Slowpoke",2,13,"img"),
(080,"Slowbro",2,13,"img"),
(081,"Magnemite",5,1,"img"),
(082,"Magneton",5,1,"img"),
(083,"Farfetch'd",11,18,"img"),
(084,"Doduo",11,18,"img"),
(085,"Dodrio",11,18,"img"),
(086,"Seel",2,2,"img"),
(087,"Dewgong",2,9,"img"),
(088,"Grimer",17,17,"img"),
(089,"Muk",17,17,"img"),
(090,"Shellder",2,2,"img"),
(091,"Cloyster",2,9,"img"),
(092,"Gastly",6,15,"img"),
(093,"Haunter",6,15,"img"),
(094,"Gengar",6,15,"img"),
(095,"Onix",14,16,"img"),
(096,"Drowzee",13,13,"img"),
(097,"Hypno",13,13,"img"),
(098,"Krabby",2,2,"img"),
(099,"Kingler",2,2,"img"),
(100,"Voltorb",5,5,"img"),
(101,"Electrode",5,5,"img"),
(102,"Exeggcute",12,13,"img"),
(103,"Exeggutor",12,13,"img"),
(104,"Cubone",16,16,"img"),
(105,"Marowak",16,16,"img"),
(106,"Hitmonlee",10,10,"img"),
(107,"Hitmonchan",10,10,"img"),
(108,"Lickitung",11,11,"img"),
(109,"Koffing",17,17,"img"),
(110,"Weezing",17,17,"img"),
(111,"Rhyhorn",16,14,"img"),
(112,"Rhydon",16,14,"img"),
(113,"Chansey",11,11,"img"),
(114,"Tangela",12,12,"img"),
(115,"Kangaskhan",11,11,"img"),
(116,"Horsea",2,2,"img"),
(117,"Seadra",2,2,"img"),
(118,"Goldeen",2,2,"img"),
(119,"Seaking",2,2,"img"),
(120,"Staryu",2,2,"img"),
(121,"Starmie",2,13,"img"),
(122,"Mr.Mime",13,8,"img"),
(123,"Scyther",3,18,"img"),
(124,"Jynx",9,13,"img"),
(125,"Electabuzz",5,5,"img"),
(126,"Magmar",7,7,"img"),
(127,"Pinsir",3,3,"img"),
(128,"Tauros",11,11,"img"),
(129,"Magikarp",2,2,"img"),
(130,"Gyarados",2,18,"img"),
(131,"Lapras",2,9,"img"),
(132,"Ditto",11,11,"img"),
(133,"Eevee",11,11,"img"),
(134,"Vaporeon",2,2,"img"),
(135,"Jolteon",5,5,"img"),
(136,"Flareon",7,7,"img"),
(137,"Porygon",11,11,"img"),
(138,"Omanyte",14,2,"img"),
(139,"Omastar",14,2,"img"),
(140,"Kabuto",14,2,"img"),
(141,"Kabutops",14,2,"img"),
(142,"Aerodactyl",14,18,"img"),
(143,"Snorlax",11,11,"img"),
(144,"Articuno",9,18,"img"),
(145,"Zapdos",5,18,"img"),
(146,"Moltres",7,18,"img"),
(147,"Dratini",4,4,"img"),
(148,"Dragonair",4,4,"img"),
(149,"Dragonite",4,18,"img"),
(150,"Mewtwo",13,13,"img"),
(151,"Mew",13,13,"img");