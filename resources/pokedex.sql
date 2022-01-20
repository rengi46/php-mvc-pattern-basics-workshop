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

CREATE TABLE efect_types (
    typeAttack INT,
    typeDefense INT,
    effect FLOAT,
    FOREIGN KEY (typeAttack) REFERENCES types(id),
    FOREIGN KEY (typeDefense) REFERENCES types(id)
);

INSERT INTO types VALUES
(1,"ACERO","assets/img/steel.PNG"),
(2,"AGUA","assets/img/water.PNG"),
(3,"BICHO","assets/img/bug.PNG"),
(4,"DRAGON","assets/img/dragon.PNG"),
(5,"ELECTRICO","assets/img/electric.PNG"),
(6,"FANTASMA","assets/img/ghost.PNG"),
(7,"FUEGO","assets/img/fire.PNG"),
(8,"HADA","assets/img/fairy.PNG"),
(9,"HIELO","assets/img/ice.PNG"),
(10,"LUCHA","assets/img/fighting.PNG"),
(11,"NORMAL","assets/img/normal.PNG"),
(12,"PLANTA","assets/img/grass.PNG"),
(13,"PSIQUICO","assets/img/psychic.PNG"),
(14,"ROCA","assets/img/rock.PNG"),
(15,"SINIESTRO","assets/img/dark.PNG"),
(16,"TIERRA","assets/img/ground.PNG"),
(17,"VENENO","assets/img/posion.PNG"),
(18,"VOLADOR","assets/img/flying.PNG");

INSERT INTO efect_types VALUES
    (1, 1, 0.5), (1, 2, 0.5), (1, 3, 1.0), (1, 4, 1.0), (1, 5, 0.5), (1, 6, 1.0), (1, 7, 0.5), (1, 8, 2.0), (1, 9, 2.0), (1, 10, 1.0),
    (1, 11, 1.0), (1, 12, 1.0), (1, 13, 1.0), (1, 14, 2.0), (1, 15, 1.0), (1, 16, 1.0), (1, 17, 1.0), (1, 18, 1.0),
    (2, 1, 1.0), (2, 2, 0.5), (2, 3, 1.0), (2, 4, 0.5), (2, 5, 1.0), (2, 6, 1.0), (2, 7, 2.0), (2, 8, 1.0), (2, 9, 1.0), (2, 10, 1.0),
    (2, 11, 1.0), (2, 12, 0.5), (2, 13, 1.0), (2, 14, 2.0), (2, 15, 1.0), (2, 16, 2.0), (2, 17, 1.0), (2, 18, 1.0),
    (3, 1, 0.5), (3, 2, 1.0), (3, 3, 1.0), (3, 4, 1.0), (3, 5, 1.0), (3, 6, 0.5), (3, 7, 0.5), (3, 8, 0.5), (3, 9, 1.0), (3, 10, 0.5),
    (3, 11, 1.0), (3, 12, 2.0), (3, 13, 2.0), (3, 14, 1.0), (3, 15, 2.0), (3, 16, 1.0), (3, 17, 0.5), (3, 18, 0.5),
    (4, 1, 0.5), (4, 2, 1.0), (4, 3, 1.0), (4, 4, 2.0), (4, 5, 1.0), (4, 6, 1.0), (4, 7, 1.0), (4, 8, 0.0), (4, 9, 1.0), (4, 10, 1.0),
    (4, 11, 1.0), (4, 12, 1.0), (4, 13, 1.0), (4, 14, 1.0), (4, 15, 1.0), (4, 16, 1.0), (4, 17, 1.0), (4, 18, 1.0),
    (5, 1, 1.0), (5, 2, 2.0), (5, 3, 1.0), (5, 4, 0.5), (5, 5, 0.5), (5, 6, 1.0), (5, 7, 1.0), (5, 8, 1.0), (5, 9, 1.0), (5, 10, 1.0),
    (5, 11, 1.0), (5, 12, 0.5), (5, 13, 1.0), (5, 14, 1.0), (5, 15, 1.0), (5, 16, 0.0), (5, 17, 1.0), (5, 18, 2.0),
    (6, 1, 1.0), (6, 2, 1.0), (6, 3, 1.0), (6, 4, 1.0), (6, 5, 1.0), (6, 6, 2.0), (6, 7, 1.0), (6, 8, 1.0), (6, 9, 1.0), (6, 10, 1.0),
    (6, 11, 0.0), (6, 12, 1.0), (6, 13,2.0), (6, 14, 1.0), (6, 15, 0.5), (6, 16, 1.0), (6, 17, 1.0), (6, 18, 1.0),
    (7, 1, 2.0), (7, 2, 0.5), (7, 3, 2.0), (7, 4, 0.5), (7, 5, 1.0), (7, 6, 1.0), (7, 7, 0.5), (7, 8, 1.0), (7, 9, 2.0), (7, 10, 1.0),
    (7, 11, 1.0), (7, 12, 2.0), (7, 13, 1.0), (7, 14, 0.5), (7, 15, 1.0), (7, 16, 1.0), (7, 17, 1.0), (7, 18, 1.0),
    (8, 1, 0.5), (8, 2, 1.0), (8, 3, 1.0), (8, 4, 2.0), (8, 5, 1.0), (8, 6, 1.0), (8, 7, 0.5), (8, 8, 1.0), (8, 9, 1.0), (8, 10, 2.0),
    (8, 11, 1.0), (8, 12, 1.0), (8, 13, 1.0), (8, 14, 1.0), (8, 15, 2.0), (8, 16, 1.0), (8, 17, 0.5), (8, 18, 1.0),
    (9, 1, 0.5), (9, 2, 0.5), (9, 3, 1.0), (9, 4, 2.0), (9, 5, 1.0), (9, 6, 1.0), (9, 7, 0.5), (9, 8, 1.0), (9, 9, 0.5), (9, 10, 1.0),
    (9, 11, 1.0), (9, 12, 2.0), (9, 13, 1.0), (9, 14, 1.0), (9, 15, 1.0), (9, 16, 2.0), (9, 17, 1.0), (9, 18, 2.0),
    (10, 1, 2.0), (10, 2, 1.0), (10, 3, 0.5), (10, 4, 1.0), (10, 5, 1.0), (10, 6, 0.5), (10, 7, 1.0), (10, 8, 0.5), (10, 9, 2.0), (10, 10, 1.0),
    (10, 11, 2.0), (10, 12, 1.0), (10, 13, 0.5), (10, 14, 2.0), (10, 15, 2.0), (10, 16, 1.0), (10, 17, 0.5), (10, 18, 0.5),
    (11, 1, 0.5), (11, 2, 1.0), (11, 3, 1.0), (11, 4, 1.0), (11, 5, 1.0), (11, 6, 0.0), (11, 7, 1.0), (11, 8, 1.0), (11, 9, 1.0), (11, 10, 1.0),
    (11, 11, 1.0), (11, 12, 1.0), (11, 13, 0.5), (11, 14, 0.5), (11, 15, 1.0), (11, 16, 1.0), (11, 17, 1.0), (11, 18, 1.0),
    (12, 1, 0.5), (12, 2, 2.0), (12, 3, 0.5), (12, 4, 0.5), (12, 5, 1.0), (12, 6, 1.0), (12, 7, 1.0), (12, 8, 0.5), (12, 9, 1.0), (12, 10, 1.0),
    (12, 11, 1.0), (12, 12, 0.5), (12, 13, 1.0), (12, 14, 2.0), (12, 15, 1.0), (12, 16, 2.0), (12, 17, 0.5), (12, 18, 0.5),
    (13, 1, 0.5), (13, 2, 1.0), (13, 3, 1.0), (13, 4, 1.0), (13, 5, 1.0), (13, 6, 1.0), (13, 7, 1.0), (13, 8, 1.0), (13, 9, 1.0), (13, 10, 2.0),
    (13, 11, 1.0), (13, 12, 1.0), (13, 13, 0.5), (13, 14, 1.0), (13, 15, 0.0), (13, 16, 1.0), (13, 17, 2.0), (13, 18, 1.0),
    (14, 1, 0.5), (14, 2, 1.0), (14, 3, 2.0), (14, 4, 1.0), (14, 5, 1.0), (14, 6, 1.0), (14, 7, 2.0), (14, 8, 1.0), (14, 9, 2.0), (14, 10, 0.5),
    (14, 11, 1.0), (14, 12, 1.0), (14, 13, 1.0), (14, 14, 1.0), (14, 15, 1.0), (14, 16, 0.5), (14, 17, 2.0), (14, 18, 2.0),
    (15, 1, 1.0), (15, 2, 1.0), (15, 3, 1.0), (15, 4, 1.0), (15, 5, 1.0), (15, 6, 2.0), (15, 7, 1.0), (15, 8, 0.5), (15, 9, 1.0), (15, 10, 0.5),
    (15, 11, 1.0), (15, 12, 1.0), (15, 13, 2.0), (15, 14, 1.0), (15, 15, 0.5), (15, 16, 1.0), (15, 17, 1.0), (15, 18, 1.0),
    (16, 1, 2.0), (16, 2, 1.0), (16, 3, 0.5), (16, 16, 2



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