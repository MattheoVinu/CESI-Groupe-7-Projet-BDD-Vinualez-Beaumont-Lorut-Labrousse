/* 
--- Création de la table Région ---
*/ 

CREATE TABLE Region (
	idRegion int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomRegion VARCHAR(128)
);

INSERT INTO Region(nomRegion) 
VALUES
	("Provences-Alpes-Côte d'Azur"),
	('Pays de la Loire'),
	('Occitanie'),
	('Nouvelle-Aquitaine'),
	('Normandie'),
	('Île-de-France'),
	('Hauts-de-France'),
	('Grand Est'),
	('Corse'),
	('Centre-Val de Loire'),
	('Bretagne'),
	('Bourgogne-Franche-Comté'),
	('Auvergne-Rhône-Alpes');

/* 
--------------------------------------
*/ 


/* 
--- Création de la table Ville ---
*/

CREATE TABLE Ville (
	idVille int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomVille VARCHAR(128),
    idRegion int
);

INSERT INTO Ville(nomVille, idRegion) 
VALUES
	('Paris', 6), 
	('Marseille', 1),
	('Lyon', 13),
	('Toulouse', 3),
	('Nice', 1),
	('Nantes', 2),
	('Montpellier', 3),
	('Strasbourg', 8),
	('Bordeaux', 4),
	('Lille', 7);
    
ALTER TABLE Ville ADD FOREIGN KEY fk_ville(idRegion) REFERENCES Region(idRegion);

/* 
--------------------------------------
*/ 


/* 
--- Création de la table Secteur ---
*/

CREATE TABLE Secteur (
	idSecteur int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomSecteur VARCHAR(256)
);

INSERT INTO Secteur (nomSecteur) 
VALUES 
	("Combustion dans les industries de l'energie et de la transformantion de l'energie"),
	("Combustion hors industrie "),
	("Combustion dans l'industrie manufacturiere "),
	("Procedes de production "),
	("Extraction et distribution de combustibles fossiles/energie geothermique "),
	("Utilisation de solvants et autres produits"),
	("Transport routier "),
	("Autres sources mobiles et machines "),
	("Traitement et elimination des dechets "),
	("Agriculture et sylviculture"),
	("Autres sources biotiques ");

/* 
--------------------------------------
*/ 


/* 
--- Création de la table Personnel ---
*/

CREATE TABLE Personnel (
	idPersonnel int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomPersonnel VARCHAR(128),
    prenomPersonnel VARCHAR(128), 
    dateNaissance DATE, 
    adressePostale VARCHAR(256),
	datePoste DATE
);

INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Moreau","Adam","17 Rue du Faubourg Saint-Antoine, 75011 Paris", "1974-12-24", "1994-01-26"),
("Dubois","Adele","25 Rue de la Pompe, 75116 Paris", "1965-09-17", "1988-05-18"),
("Martin","Adrien","8 Rue de la Roquette, 75011 Paris", "1987-02-11", "2003-09-07"),
("Lambert","Agathe","37 Rue Saint-Antoine, 75004 Paris", "1986-06-29", "2003-11-11"),
("Fournier","Alban","19 Rue du Cherche-Midi, 75006 Paris", "1978-05-08", "2000-04-20"),
("Bernard","Alex","12 Rue de Turenne, 75004 Paris", "1989-10-21", "2017-07-16"),
("Durand","Alexis","10 Rue de la Paix, 75002 Paris", "1981-03-07", "2006-03-01"),
("Leroy","Alice"," 33 Rue de la République, Aix-en-Provence, France", "1993-07-02", "2011-08-23"),
("Roux","Aline"," 1 Rue des Frères Lumière, Aubagne, France", "1969-12-02", "1990-01-20"),
("Girard","ALois","1 Chemin de la Bartavelle, Bouc-Bel-Air, France", "1980-11-16", "2004-03-15");
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Dupont","Amelie"," 50 Avenue du 8 Mai 1945, Cabriès, France", "1992-04-13", "2022-12-24"),
("Simon","Anaïs"," 1 Rue des Magnolias, Carnoux-en-Provence, France", "1963-08-26", "1992-10-07"),
("Lefebvre","Andréa","37 Boulevard de la République, Cassis, France", "1972-01-06", "1993-02-10"),
("Rousseau","Annabelle"," 2 Avenue de la Grande-Bastide, Châteauneuf-le-Rouge, France"," 1976-09-10", "2009-06-24"),
("Mercier","Antoine","2 Rue Saint-Jacques, Gardanne, France", "1984-11-08", "2015-08-08"),
("Petit","Apolline","6 Avenue Joseph Gasquet, Gémenos, France", "2001-08-13", "2023-04-11"),
("Gauthier","Arthur","5 Rue Pierre et Marie Curie, Istres, France", "1994-03-12", "2014-11-09"),
("André","Astrid","2 Avenue de la Paix, La Ciotat, France", "1964-12-29", "1982-02-02"),
("Leclerc","Auguste","45 Rue des Cordeliers, La Fare-les-Oliviers, France", "1982-06-05", "2004-09-11"); 
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Caron","Aurélie","20 Rue de la République, Villefranche-sur-Saône, France", "1991-01-24", "2019-02-16"),
("Marchand","Axel","4 Rue de la Liberté, Saint-Genis-Laval, France", "1970-07-15", "1990-11-01"),
("Robin","Béatrice","20 Rue de la Victoire, Vénissieux, France", "1988-09-30", "2006-12-16"),
("Faure","Benjamin","3 Avenue du Dauphiné, Saint-Priest, France", "1997-04-06", "2010-08-28"),
("Bailly","Blaise","7 Rue des Tuiliers, Tassin-la-Demi-Lune, France", "1975-12-14", "2013-02-01"),
("Bertrand","Camille","8 Rue de la République, Oullins, France", "1979-05-20", "2012-05-21"),
("Charpentier","Capucine","1 Place des Archives, Sainte-Foy-lès-Lyon, France", "1985-02-27", "2017-06-15"),
("Prevost","Cédric","3 Rue du Prat Dessus, Blagnac, France", "1967-08-23", "1990-04-09"),
("Royer","Céleste","15 Rue des Potiers, Colomiers, France", "1995-03-17", "2007-04-30"); 
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Masson","Céline","10 Rue de l'Église, Tournefeuille, France", "1971-10-12", "2004-06-23"),
("Mathieu","Chloé","14 Rue Saint-André, Balma, France", "1983-06-26", "2009-01-04"),
("Denis","Clara","2 Avenue des Pyrénées, Cugnaux, France", "1977-01-08", "1997-05-08"),
("Roche","Clément","15 Rue de France, Saint-Laurent-du-Var, France", "2000-11-19", "2020-12-17"),
("Dubois","Coline","25 Rue de la Buffa, Nice, France", "1998-09-01", "2018-09-29"),
("Muller","Corentin","4 Avenue Sainte-Marguerite, Cagnes-sur-Mer, France", "1990-02-19", "2010-12-28"),
("Blanc","Delphine","5 Rue Aristide Briand, Saint-Herblain, France", "1988-05-29", "2005-09-05"),
("Gerard","Dimitri","4 Rue du Bois Briand, Carquefou, France", "1973-07-04", "1994-07-19"),
("Lejeune","Damien","3 Rue de la Paix, Rezé, France", "1989-12-05", "2015-05-12"); 
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Chevalier","Elsa","8 Rue de la Commune de Paris, Vertou, France", "1993-09-24", "2016-02-19"),
("Adam","Emile"," 20 Rue du 11 Novembre, Bouguenais, France", "1960-04-02", "1986-09-08"),
("Laurent","Emma"," 2 Rue de la Loire, Orvault, France", "1974-06-15", "1998-08-14"),
("Lecomte","Enzo","1 Rue du Bois Hardy, Saint-Sébastien-sur-Loire, France", "1996-01-01", "2018-05-04"),
("Julien","Estelle","15 Rue de la République, Castelnau-le-Lez, France", "1977-10-05", "2001-05-11"),
("Picard","Ethan","6 Rue de la Fontaine, Lattes, France", "1981-11-30", "2002-10-20"),
("Poirier","Eugénie","2 Rue du Faubourg Boutonnet, Montpellier, France", "1991-08-03", "2011-12-19"),
("Noel","Fabien","5 Rue de la Paix, Saint-Jean-de-Védas, France", "1978-03-25", "1998-06-18"),
("Roger","Fanny","9 Rue de l'Église, Pérols, France", "1987-07-23", "2013-11-02"); 
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Gros","Félix","2 Rue de la Poste, Schiltigheim, France", "1966-12-18", "1993-06-18"),
("Lemoine","Flavie","12 Rue du Général Leclerc, Illkirch-Graffenstaden, France", "1972-09-14", "1994-07-11"),
("Guillaume","Florent","8 Rue des Frères Lumière, Ostwald, France", "1999-02-16", "2022-06-12"),
("Langlois","Florian","10 Rue de la République, Bègles, France", "1980-05-10", "2006-06-26"),
("Jacquet","Gabriel","7 Rue Jean Jacques Rousseau, Talence, France", "1976-01-21", "2002-07-10"),
("Aubret","Gaelle","2 Rue du Jardin Public, Bordeaux, France", "1984-06-22", "2015-01-27"),
("Henry","Gautier","5 Rue des Frères Bonie, Mérignac, France", "1992-11-12 ", "2018-09-20"),
("Berthier","Géraldine","6 Rue de la Gare, Tourcoing, France", "1968-08-08", "1991-09-11"),
("Barbier","Grégoire","10 Rue du Molinel, Villeneuve-d'Ascq, France", "1991-03-02", "2021-08-11"); 
INSERT INTO Personnel(nomPersonnel,  prenomPersonnel, adressePostale, dateNaissance, datePoste) VALUES
("Renard","Guihem","12 Rue du Maréchal Foch, Roubaix, France", "1979-07-06", "2013-07-11");


/* 
--------------------------------------
*/ 


/* 
--- Création de la table Agence ---
*/

CREATE TABLE Agence (
	idAgence int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomAgence VARCHAR(128),
    idVille int
);

INSERT INTO Agence (nomAgence, idVille) VALUES 
("datax_paris", 1),
("datax_marseille_sud", 2),
("datax_marseille_nord", 2),
("datax_lyon", 3),
("datax_toulouse", 4),
("datax_nice", 5),
("datax_nantes", 6),
("datax_montpellier", 7),
("datax_strasbourg", 8),
("datax_bordeaux", 9),
("datax_lille", 10);

ALTER TABLE Ville ADD FOREIGN KEY fk_ville(idRegion) REFERENCES Region(idRegion);

/* 
--------------------------------------
*/ 


/* 
--- Création des tables héritant de Personnel --- 
*/

CREATE TABLE AgentTechnique (
	idPersonnel int PRIMARY KEY NOT NULL AUTO_INCREMENT
);

CREATE TABLE AgentAdministratif (
	idPersonnel int PRIMARY KEY NOT NULL AUTO_INCREMENT
);

CREATE TABLE ChefDAgence (
	idPersonnel int,
    idAgence int 
);

INSERT INTO ChefDAgence(idPersonnel,idAgence) 
VALUES
	(1,1),
	(8,2),
	(14,3),
	(20,4),
	(27,5),
	(32,6),
	(35,7),
	(42,8),
	(47,9),
	(50,10),
	(54,11);

INSERT INTO agentadministratif(idPersonnel) 
VALUES
	(2),
	(3),
	(9),
	(10),
	(15),
	(16),
	(21),
	(22),
	(28),
	(29),
	(33),
	(36),
	(37),
	(43),
	(44),
	(48),
	(51),
	(55);

INSERT INTO agenttechnique(idPersonnel) 
VALUES
	(4),
	(5),
	(6),
	(7),
	(11),
	(12),
	(13),
	(17),
	(18),
	(19),
	(23),
	(24),
	(25),
	(26),
	(30),
	(31),
	(34),
	(38),
	(39),
	(40),
	(41),
	(45),
	(46),
	(49),
	(52),
	(53),
	(56);


ALTER TABLE AgentTechnique ADD FOREIGN KEY fk_agenttech(idPersonnel) REFERENCES Personnel(idPersonnel);

ALTER TABLE AgentAdministratif ADD FOREIGN KEY fk_agentadmin(idPersonnel) REFERENCES Personnel(idPersonnel);

ALTER TABLE ChefDAgence ADD FOREIGN KEY fk_chefagenceid(idPersonnel) REFERENCES Personnel(idPersonnel);
ALTER TABLE ChefDAgence ADD FOREIGN KEY fk_chefagenceidagence(idAgence) REFERENCES Agence(idAgence);

/* 
--------------------------------------
*/


/* 
--- Création de la table Rapport --- 
*/

CREATE TABLE Rapport (
	idRapport int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomRapport VARCHAR(128), 
    dateRapport DATE,
    idPersonnel int
);

############ Remplissage de Rapport ############

ALTER TABLE Rapport ADD FOREIGN KEY fk_rapport(idPersonnel) REFERENCES AgentAdministratif(idPersonnel);

/* 
--------------------------------------
*/


/* 
--- Création de la table Capteur --- 
*/

CREATE TABLE Capteur (
	idCapteur int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    positionCapteur VARCHAR(128),
    idSecteur int, 
    idRegion int, 
    idPersonnel int, 
    idAgence int
);

insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("48.86087529446979, 2.335058572404302",1,6,1,4),
("48.87000845612627, 2.369018894039237",1,6,2,5),
("48.88434801059756, 2.336902967525401",1,6,3,6),
("48.884509970549274, 2.3598085822470716",1,6,4,7),
("48.88774905943474, 2.3800049307113396",1,6,5,4),
("48.8696074593075, 2.388379026416036",1,6,6,5),
("48.84680881775307, 2.289058240291303",1,6,7,6),
("48.831663178285055, 2.4315531527096783",1,6,8,7),
("48.856126935071565, 2.251885654443032",1,6,9,4),
("48.845061477689335, 2.34806234481237",1,6,10,5);
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("48.83690641789705, 2.320920456732679",1,6,11,6),
("49.25654478641175, 4.03364705831463",1,8,1,7),
("49.28246305223889, 4.020247079077851",1,8,2,4),
("49.2271751259091, 4.079829129612816",1,8,3,5),
("49.476593994338884, 0.1405408383343457",1,5,4,6),
("49.520446772463636, 0.1065805166994104",1,5,5,7),
("49.499433480614705, 0.10198588494880152",1,5,6,4),
("48.935095750303596, 2.355858891925525",1,6,7,5),
("48.83660412293017, 2.2394656476524233",1,6,8,6);
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.14306220830113, 5.904227781932842",2,1,9,11),
("43.13883076700712, 5.951034691935245",2,1,10,12),
("43.11540141937942, 5.939643629766518",2,1,11,13),
("43.22071169780779, 5.4740159289478605",2,1,1,11),
("43.243724514575405, 5.377885562140054",2,1,2,12),
("43.249226292011656, 5.411531190522786",2,1,3,13),
("43.2847258094764, 5.46920941060747",2,1,4,11),
("43.28772481998396, 5.416337708863177",2,1,5,12),
("43.30671511961653, 5.506974911853395",2,1,6,13);
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.28772481998396, 5.398484926456012",2,1,7,11),
("43.32070417687135, 5.457536437495094",2,1,8,12),
("43.29302258817468, 5.378807925793604",2,1,9,13),
("43.31578404280118, 5.4081308276456515",2,1,10,11),
("43.317490808339244, 5.457393302757092",2,1,11,12),
("43.33597769552283, 5.437062757473004",2,1,1,13),
("43.33313392524468, 5.4441002539174965",2,1,2,11),
("43.33171199016715, 5.397574582978914",2,1,3,12),
("43.24462620152058, 5.468731491473217",2,1,4,13);
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.61349061563159, 5.4002803759996505",3,1,5,17),
("43.56972657374766, 5.4387325227227725",3,1,6,18),
("43.555297361075766, 5.383114239069685",3,1,7,19),
("43.54186015994243, 5.462078468947526",3,1,8,17),
("43.52194768908957, 5.397533794090855",3,1,9,18),
("43.49754595268419, 5.409893412680431",3,1,10,19),
("43.4960516483318, 5.3686946840485135",3,1,11,17),
("43.344223877197415, 5.438235673686532",3,1,1,18),
("43.373218787931535, 5.293185052525068",3,1,2,19); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.35275323041312, 5.342838499661203",3,1,3,17),
("43.332849541838534, 5.356131548500798",3,1,4,18),
("43.3683872650112, 5.383499590229376",3,1,5,19),
("43.35360609981375, 5.446055114180411",3,1,6,17),
("43.359007327682136, 5.392882918822031",3,1,7,18),
("43.34194918058423, 5.392882918822031",3,1,8,19),
("43.32829921109537, 5.393664862871418",3,1,9,17),
("43.361849886087, 5.349875996105695",3,1,10,18),
("45.7237590221155, 4.829125580577858",4,13,11,23); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("45.744846875605994, 4.863114531699189",4,13,1,24),
("45.75778320695515, 4.7944499839793275",4,13,2,25),
("45.76880068016189, 4.851441558510278",4,13,3,26),
("45.75514827190768, 4.843888458261094",4,13,4,23),
("45.40843913079025, 4.448864607263833",4,13,5,24),
("45.42964570979812, 4.40629258767752",4,13,6,25),
("45.45084432411351, 4.388439805270355",4,13,7,26),
("45.43783702770517, 4.284069691572841",4,13,8,23),
("45.17865999084838, 5.717598947775216",4,13,9,24); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("47.314618502543794, 4.997196378779299",4,12,10,25),
("47.319739046107934, 5.048351466830596",4,12,11,26),
("47.35463861786356, 5.048694789569195",4,12,1,23),
("45.767388342751204, 4.889142754522802",4,13,2,24),
("45.78203495851922, 3.0893398625386044",4,13,3,25),
("45.79448391800865, 3.130881913909121",4,13,4,26),
("45.913061478861096, 6.12893728841616",4,13,5,23),
("45.89566460511289, 6.12705045032633",4,13,6,24),
("45.88482983537148, 6.118087969399635",4,13,7,25); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.60048133234588, 1.4434135802169736",5,3,8,30),
("43.61812150250827, 1.427362755558496",5,3,9,31),
("43.633682062068075, 1.4138915277201305",5,3,10,30),
("43.607538021241005, 1.3714714911227248",5,3,11,31),
("43.57515345826481, 1.3872356939123014",5,3,1,30),
("43.56414704482908, 1.430515596116411",5,3,2,31),
("43.5683006446758, 1.4591777830065502",5,3,3,30),
("43.57328458643456, 1.4875533480277876",5,3,4,31),
("43.59363140152294, 1.4789546919607461",5,3,5,30); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.600688893834246, 1.4649102203845779",5,3,6,31),
("43.62642096886849, 1.457458051793142",5,3,7,30),
("43.594876901490956, 1.416471124540243",5,3,8,31),
("43.66666180532905, 7.215587934789448",6,1,9,34),
("43.68645572272267, 7.207397504277493",6,1,10,34),
("43.70494340965731, 7.192415007699686",6,1,11,34),
("43.702055084299694, 7.279513244363402",6,1,1,34),
("43.73006596898347, 7.269724680907289",6,1,2,34),
("43.734829403923385, 7.24095829081652",6,1,3,34); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.74060275650464, 7.200605438050302",6,1,4,34),
("43.69367815439826, 7.298091537802352",6,1,5,34),
("47.1908504544307, -1.53223419728193",7,2,6,38),
("47.22981781419926, -1.5185895441732415",7,2,7,39),
("47.18782266498575, -1.6132667318577125",7,2,8,40),
("47.210337712889164, -1.6043559379908139",7,2,9,41),
("47.235679356147294, -1.5769274001569822",7,2,10,38),
("47.25224195106656, -1.559771755559052",7,2,11,39),
("47.23399911014039, -1.5308116754916317",7,2,1,40); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("48.114207875723345, -1.6822644143277887",7,11,2,41),
("48.09552315287216, -1.6486187874642304",7,11,3,38),
("48.123948748424056, -1.7099018935371397",7,11,4,39),
("47.44996205129324, -0.5379389776162632",7,2,5,40),
("47.4757577102867, -0.5599133033800447",7,2,6,41),
("47.47454249219185, -0.5894787598622238",7,2,7,38),
("47.96325724283738, 0.2111474876113188",7,2,8,39),
("48.0144975709608, 0.19295138328714972",7,2,9,40),
("48.39917322800465, -4.457327330690299",7,11,10,41);
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("48.382648022623876, -4.531505787179612",7,11,11,38),
("47.41933403033581, 0.6983726563487042",7,10,1,39),
("47.37843306909873, 0.6866996837633882",7,10,2,40),
("43.61498026311078, 3.867473717469829",8,3,3,45),
("43.62193961769483, 3.8525391790150856",8,3,4,46),
("43.62367933048172, 3.8861848058786443",8,3,5,45),
("43.60851728403905, 3.916225544149678",8,3,6,46),
("43.60528553405652, 3.830738186098393",8,3,7,45),
("43.645048835993656, 3.858032342584647",8,3,8,46); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("43.834838740214174, 4.349035060525909",8,3,9,45),
("43.855293677805825, 4.320440837162671",8,3,10,46),
("43.879763318086965, 4.346245380197789",8,3,11,45),
("43.78587386947769, 4.352024745769521",8,3,1,46),
("43.88476046469559, 4.379375764343971",8,3,2,45),
("43.867208633877446, 4.294654318140748",8,3,3,46),
("48.57659249062681, 7.749398956044562",9,8,4,49),
("48.62415102765966, 7.808529871984707",9,8,5,49),
("48.58549318308211, 7.793653490621782",9,8,6,49); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("48.50636776174048, 7.774736445551012",9,8,7,49),
("48.531428039679916, 7.780755504797942",9,8,8,49),
("48.56159782449256, 7.770723738769101",9,8,9,49),
("48.580184079225546, 7.792507000574121",9,8,10,49),
("48.59800529249893, 7.796519706995947",9,8,11,49),
("44.84154061789302, -0.576062743084083",10,4,1,52),
("44.86179249946051, -0.5632776808215192",10,4,2,53),
("44.89095402017995, -0.552889817733186",10,4,3,52),
("44.84607312596096, -0.6138186300782169",10,4,4,53); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("44.82640140767849, -0.5633714007642152",10,4,5,52),
("45.83074947527093, 1.2607223954521345",10,4,6,53),
("45.87952906527299, 1.2826950497303764",10,4,7,52),
("45.80897615163836, 1.2686188180833777",10,4,8,53),
("50.62752105152959, 3.0516506233189413",11,7,9,56),
("50.64173654469849, 2.987908361221954",11,7,10,56),
("50.62856453666566, 3.096270206786833",11,7,11,56),
("50.61317078233964, 3.0535012051217576",11,7,1,56),
("49.882534676263525, 2.3063076161349945",11,7,2,56); 
insert into Capteur(positionCapteur,idAgence,idRegion,idSecteur,idPersonnel) values
("49.9172540904146, 2.287081543641533",11,7,3,56);

ALTER TABLE Capteur ADD FOREIGN KEY fk_capteursecteur(idSecteur) REFERENCES Secteur(idSecteur);
ALTER TABLE Capteur ADD FOREIGN KEY fk_capteurregion(idRegion) REFERENCES Region(idRegion);
ALTER TABLE Capteur ADD FOREIGN KEY fk_capteurpersonnel(idPersonnel) REFERENCES Personnel(idPersonnel);
ALTER TABLE Capteur ADD FOREIGN KEY fk_capteuragence(idAgence) REFERENCES Agence(idAgence);

/* 
--------------------------------------
*/


/* 
--- Création de la table Gaz --- 
*/


CREATE TABLE Gaz (
	idGaz int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomGaz varchar(128), 
    typePollution varchar(3)
);

INSERT INTO Gaz(nomGaz, typePollution) 
VALUES 
	("CO2 (dioxyde de carbone) non bio", "GES"),
	("CO2 (dioxyde de carbone) bio", "GES"),
	("CH4 (methane)", "GES"),
	("N2O (protoxyde d'azote)","GES"),
	("PFC (Perfluoro carbures)","GES"),
	("HFC (Hydrofluoro carbures)","GES"),
	("SF6 (Hexafluorure de soufre)","GES"),
	("SO2 (dioxyde de soufre)","GRA"),
	("Nox (oxydes d’azote)","GRA"),
	("NH3 (ammoniac)","GRA"),
	("CO (monoxyde de carbone)","GRA"),
	("COVNM (compose organique et volatil non methanique)","GRA");
    
/* 
--------------------------------------
*/

/* 
--- Création de la table Releve --- 
*/

CREATE TABLE Releve (
	idReleve int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    dateReleve VARCHAR(128),
    donnee int, 
    idGaz int, 
    idCapteur int, 
    idPersonnel int
);






############################### Partie Sans retour ###############################



INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-05-04",261,7,98,3),
  ("2019-05-15",688,5,32,22),
  ("2021-06-15",73,2,47,10),
  ("2020-12-04",16,9,70,29),
  ("2021-11-06",42,10,126,43),
  ("2020-05-08",42,11,38,51),
  ("2018-11-21",46,8,81,2),
  ("2020-04-22",229,3,59,51),
  ("2017-09-08",639,4,58,21),
  ("2017-06-04",46,10,124,9);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-05-28",573,11,104,16),
  ("2021-06-27",333,7,8,29),
  ("2022-04-15",23,2,78,15),
  ("2022-11-02",314,4,18,10),
  ("2018-11-15",298,11,137,21),
  ("2018-07-27",563,7,122,44),
  ("2022-05-14",334,5,14,43),
  ("2022-09-11",474,3,60,55),
  ("2021-03-22",660,4,74,21),
  ("2020-11-16",331,7,90,21);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-08-19",30,9,145,33),
  ("2018-04-14",691,7,104,33),
  ("2022-07-23",579,4,41,15),
  ("2018-11-29",661,11,113,37),
  ("2018-08-29",486,10,18,51),
  ("2020-06-15",357,11,107,9),
  ("2019-10-13",64,5,76,48),
  ("2020-01-23",348,5,114,3),
  ("2021-12-08",453,3,63,51),
  ("2019-01-04",411,10,127,36);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-11-15",71,1,137,29),
  ("2022-07-05",484,6,59,15),
  ("2017-11-10",452,7,140,43),
  ("2021-12-18",333,9,32,9),
  ("2022-06-26",443,5,18,36),
  ("2020-11-01",194,3,83,3),
  ("2021-02-26",73,11,66,28),
  ("2018-01-07",488,8,12,16),
  ("2019-08-25",656,3,142,55),
  ("2020-07-06",116,4,16,44);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-01-08",670,10,93,44),
  ("2020-03-18",325,3,123,21),
  ("2021-05-10",148,9,22,51),
  ("2018-03-28",404,10,120,22),
  ("2022-09-28",77,9,24,51),
  ("2017-12-16",200,11,145,29),
  ("2019-05-12",369,7,123,9),
  ("2022-08-09",537,7,16,3),
  ("2022-05-03",644,2,110,10),
  ("2021-12-22",453,3,5,3);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-09-21",621,4,60,36),
  ("2020-07-22",41,5,32,37),
  ("2019-01-18",535,6,13,16),
  ("2019-03-16",360,10,141,28),
  ("2022-07-21",94,4,43,3),
  ("2017-05-02",154,9,133,21),
  ("2022-08-28",479,5,131,44),
  ("2022-12-13",446,8,119,36),
  ("2017-05-27",181,3,43,29),
  ("2022-01-18",182,2,8,22);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-06-16",76,7,25,43),
  ("2021-01-31",573,8,10,37),
  ("2019-03-11",466,3,135,37),
  ("2017-12-09",4,8,75,28),
  ("2017-08-23",596,12,52,28),
  ("2021-11-27",0,12,44,37),
  ("2021-04-20",252,9,99,22),
  ("2019-10-06",463,7,17,9),
  ("2017-06-17",200,2,21,10),
  ("2021-04-19",358,6,40,37);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-10-17",423,11,84,28),
  ("2020-09-13",366,3,61,51),
  ("2022-08-28",302,7,97,33),
  ("2020-08-27",142,5,95,15),
  ("2018-08-27",509,8,42,43),
  ("2021-12-18",651,6,127,3),
  ("2020-11-06",473,7,106,51),
  ("2021-06-13",171,5,53,29),
  ("2020-08-03",657,8,9,22),
  ("2022-08-06",94,10,143,22);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-04-30",337,6,107,44),
  ("2020-02-22",497,11,4,16),
  ("2019-03-04",351,10,145,15),
  ("2021-04-13",293,5,19,16),
  ("2017-07-03",294,3,127,22),
  ("2022-04-03",132,7,25,51),
  ("2019-02-26",665,3,89,15),
  ("2017-12-08",81,2,70,3),
  ("2022-07-27",159,8,86,10),
  ("2022-11-07",289,9,57,33);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-11-29",546,2,142,43),
  ("2019-06-04",107,11,126,29),
  ("2019-12-03",22,10,133,43),
  ("2020-04-18",515,10,139,55),
  ("2018-12-29",631,9,131,44),
  ("2021-10-25",179,2,89,2),
  ("2019-04-14",57,6,57,33),
  ("2017-06-06",698,3,120,51),
  ("2020-03-09",433,4,112,22),
  ("2019-03-24",186,6,8,43);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-06-02",518,7,90,48),
  ("2021-10-17",140,2,122,48),
  ("2018-01-08",693,11,38,33),
  ("2021-07-01",103,2,19,37),
  ("2020-06-01",384,4,26,51),
  ("2019-03-15",351,10,60,29),
  ("2019-06-24",166,8,47,43),
  ("2020-03-31",508,7,76,21),
  ("2017-05-16",280,6,34,37),
  ("2020-05-09",413,8,86,44);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-01-28",592,2,114,16),
  ("2019-12-29",336,6,94,48),
  ("2021-10-14",69,4,53,29),
  ("2021-08-13",10,10,117,51),
  ("2018-11-25",282,7,17,16),
  ("2019-12-19",583,2,109,10),
  ("2021-01-02",698,10,60,21),
  ("2022-02-03",92,5,78,21),
  ("2020-04-23",26,11,139,29),
  ("2020-04-09",277,3,102,36);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-08-28",175,2,42,3),
  ("2020-10-02",676,11,30,36),
  ("2022-02-13",569,9,99,36),
  ("2020-10-14",159,1,74,29),
  ("2021-09-03",481,4,94,15),
  ("2019-01-09",68,3,46,22),
  ("2021-07-14",294,4,83,10),
  ("2017-12-15",278,5,28,15),
  ("2017-05-15",384,11,60,29),
  ("2019-08-16",178,2,101,10);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-06-06",7,3,100,10),
  ("2021-12-05",677,3,143,29),
  ("2019-12-26",105,8,134,51),
  ("2021-03-31",409,11,13,55),
  ("2018-04-29",502,9,88,43),
  ("2022-11-22",133,6,5,28),
  ("2020-03-02",366,5,125,15),
  ("2020-08-30",615,10,88,3),
  ("2019-04-16",112,5,104,28),
  ("2022-09-22",330,9,78,37);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-09-02",556,5,62,51),
  ("2019-01-13",360,7,134,43),
  ("2019-02-06",28,12,7,29),
  ("2021-04-04",360,6,24,15),
  ("2019-10-17",593,10,141,10),
  ("2022-04-18",234,2,64,15),
  ("2021-12-05",674,2,33,29),
  ("2017-07-23",477,7,10,43),
  ("2018-05-01",233,4,9,33),
  ("2019-04-25",646,1,9,29);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-05-22",474,9,14,3),
  ("2020-09-29",363,11,141,21),
  ("2022-03-23",55,7,56,28),
  ("2022-10-17",252,6,142,21),
  ("2019-12-28",563,12,113,37),
  ("2019-12-01",530,12,4,16),
  ("2020-12-19",35,4,36,28),
  ("2022-02-12",367,4,116,51),
  ("2021-11-26",5,8,37,33),
  ("2019-06-10",485,4,138,22);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-09-09",381,3,64,48),
  ("2018-03-08",356,12,71,10),
  ("2017-05-13",531,5,82,43),
  ("2017-07-27",120,6,93,37),
  ("2021-07-15",444,9,73,3),
  ("2018-10-17",297,9,32,16),
  ("2017-12-19",302,5,105,51),
  ("2021-12-27",264,2,43,48),
  ("2021-07-28",287,12,123,55),
  ("2019-02-19",490,6,74,3);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-05-20",33,12,124,44),
  ("2018-03-13",437,4,134,21),
  ("2021-11-25",43,2,9,3),
  ("2017-06-23",427,2,37,3),
  ("2017-07-02",625,9,114,43),
  ("2019-07-26",551,5,70,9),
  ("2021-04-03",127,6,110,43),
  ("2018-04-08",208,3,139,9),
  ("2019-06-24",164,9,115,51),
  ("2020-03-20",79,5,85,15);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-12-25",231,10,95,29),
  ("2021-09-05",400,1,14,28),
  ("2020-09-24",419,1,69,10),
  ("2020-05-07",647,9,52,16),
  ("2022-12-20",657,8,8,48),
  ("2021-02-28",507,10,73,48),
  ("2022-09-13",327,3,18,43),
  ("2017-11-30",353,3,146,10),
  ("2021-11-21",394,5,123,16),
  ("2018-11-16",24,5,120,15);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-05-04",483,3,78,15),
  ("2019-05-24",169,10,102,51),
  ("2018-01-03",558,8,103,21),
  ("2018-04-06",232,3,4,36),
  ("2019-01-12",453,7,135,9),
  ("2021-01-26",529,6,68,51),
  ("2022-10-30",198,4,31,33),
  ("2020-01-15",158,6,23,43),
  ("2018-11-23",195,7,40,33),
  ("2021-01-08",545,10,96,16);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-05-23",56,11,112,2),
  ("2018-04-29",626,3,141,51),
  ("2022-01-29",290,2,54,36),
  ("2018-04-22",433,4,107,10),
  ("2021-05-07",91,11,54,28),
  ("2021-11-13",45,1,37,21),
  ("2022-03-22",533,1,42,43),
  ("2018-03-07",166,4,71,15),
  ("2019-04-03",308,1,87,16),
  ("2021-02-15",235,9,32,15);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-02-16",485,7,4,51),
  ("2020-06-22",616,9,122,51),
  ("2018-02-15",518,3,14,3),
  ("2018-08-21",573,2,141,48),
  ("2018-08-21",182,9,19,55),
  ("2019-02-13",189,10,137,29),
  ("2022-03-19",605,5,112,21),
  ("2018-01-17",349,10,30,9),
  ("2018-10-31",115,8,22,43),
  ("2022-05-02",562,9,135,51);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-08-25",95,7,101,48),
  ("2017-10-14",347,10,110,29),
  ("2022-11-13",551,11,133,15),
  ("2019-02-15",560,2,19,44),
  ("2019-11-14",153,5,94,36),
  ("2019-03-30",183,6,142,51),
  ("2022-06-25",496,7,52,36),
  ("2017-07-30",86,10,29,2),
  ("2022-02-11",231,6,32,10),
  ("2018-07-07",585,9,130,10);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-04-26",334,1,91,15),
  ("2022-10-13",7,12,73,33),
  ("2018-06-16",438,10,114,21),
  ("2022-12-01",287,2,87,3),
  ("2020-11-06",153,7,68,3),
  ("2021-11-03",58,7,19,48),
  ("2022-01-22",30,9,132,15),
  ("2017-12-31",406,4,41,2),
  ("2019-03-22",580,3,73,2),
  ("2020-12-12",15,5,10,9);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-05-30",398,3,106,36),
  ("2018-09-24",591,2,132,16),
  ("2021-12-13",102,6,39,29),
  ("2021-04-28",628,8,75,43),
  ("2022-09-03",502,9,88,15),
  ("2022-09-26",63,11,87,2),
  ("2017-05-20",201,8,143,29),
  ("2017-08-18",596,7,113,10),
  ("2022-09-18",49,5,70,21),
  ("2019-08-22",255,2,62,16);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-01-22",225,11,19,22),
  ("2020-04-14",189,10,45,37),
  ("2017-09-15",300,4,88,9),
  ("2018-01-13",385,6,128,37),
  ("2018-02-18",453,1,110,16),
  ("2022-07-14",448,7,99,36),
  ("2020-08-19",394,1,87,10),
  ("2021-08-02",537,2,83,29),
  ("2021-08-19",612,2,146,44),
  ("2021-08-28",368,7,46,2);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-07-23",550,8,22,28),
  ("2019-11-06",201,5,62,43),
  ("2019-11-07",347,7,47,3),
  ("2020-11-14",44,4,110,2),
  ("2018-03-17",106,5,112,28),
  ("2019-08-24",236,5,40,44),
  ("2017-08-01",607,8,100,16),
  ("2020-02-28",558,11,16,10),
  ("2019-03-15",522,7,125,9),
  ("2022-02-22",282,11,59,22);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-12-13",307,1,11,22),
  ("2018-03-03",697,9,11,44),
  ("2021-07-04",545,7,69,29),
  ("2017-07-25",291,12,96,9),
  ("2018-10-03",563,3,34,28),
  ("2018-09-11",587,3,145,29),
  ("2020-07-12",368,4,54,44),
  ("2017-12-13",235,12,140,16),
  ("2019-10-22",305,11,11,10),
  ("2022-02-12",373,11,79,2);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-11-18",621,6,13,9),
  ("2021-03-13",555,9,88,51),
  ("2022-02-19",142,2,17,48),
  ("2021-03-04",508,3,18,33),
  ("2019-10-31",376,4,77,16),
  ("2021-12-07",563,3,57,29),
  ("2018-10-13",231,4,65,15),
  ("2022-05-25",612,10,5,16),
  ("2021-09-15",37,3,145,21),
  ("2019-09-03",219,8,98,29);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-05-09",16,12,110,10),
  ("2022-12-07",349,1,36,3),
  ("2017-09-26",606,1,97,48),
  ("2019-10-24",518,6,58,51),
  ("2022-08-13",694,3,18,16),
  ("2018-05-25",574,6,52,9),
  ("2019-09-04",652,7,76,51),
  ("2018-03-14",568,6,7,51),
  ("2017-05-08",270,8,82,51),
  ("2021-03-15",165,9,18,37);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-10-08",348,8,49,51),
  ("2019-12-14",693,11,25,55),
  ("2019-04-14",15,7,89,29),
  ("2020-07-10",126,10,19,21),
  ("2021-04-21",386,8,83,44),
  ("2020-05-01",254,4,11,36),
  ("2018-01-19",273,10,50,55),
  ("2018-10-28",25,10,145,10),
  ("2019-04-14",541,3,22,28),
  ("2017-09-09",207,4,34,21);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-09-04",192,3,86,22),
  ("2018-02-21",75,9,130,22),
  ("2021-09-27",500,9,107,36),
  ("2018-09-14",228,8,142,29),
  ("2017-07-26",460,2,51,33),
  ("2022-06-23",166,11,12,36),
  ("2022-09-10",299,9,12,9),
  ("2021-06-04",652,2,21,3),
  ("2017-06-08",228,10,13,3),
  ("2022-10-18",486,12,63,48);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-01-10",109,9,126,28),
  ("2022-01-17",630,9,60,48),
  ("2022-10-30",546,4,86,48),
  ("2021-12-06",93,3,114,21),
  ("2019-03-13",593,11,10,43),
  ("2021-10-13",235,12,34,28),
  ("2017-12-13",267,7,60,16),
  ("2022-11-20",187,3,74,9),
  ("2017-08-06",241,5,67,10),
  ("2017-09-11",162,3,105,21);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-09-07",427,8,21,22),
  ("2019-01-13",376,3,101,28),
  ("2018-12-01",418,10,55,28),
  ("2020-11-04",418,2,54,3),
  ("2022-08-23",670,7,38,33),
  ("2018-03-21",29,9,26,9),
  ("2022-11-22",242,12,50,21),
  ("2018-11-27",495,4,100,55),
  ("2017-10-29",678,1,78,28),
  ("2020-02-11",566,10,49,43);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-04-01",270,1,141,10),
  ("2019-10-31",374,8,43,28),
  ("2019-05-17",615,1,123,51),
  ("2020-09-13",540,6,91,36),
  ("2022-10-02",105,10,80,37),
  ("2017-09-03",356,8,31,2),
  ("2020-08-10",614,10,17,51),
  ("2022-10-09",590,2,83,44),
  ("2019-03-14",528,10,106,44),
  ("2021-06-24",592,7,35,36);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-09-22",158,5,119,28),
  ("2020-03-11",455,2,76,22),
  ("2021-05-13",162,7,43,22),
  ("2019-12-21",557,4,12,10),
  ("2019-04-30",646,2,19,3),
  ("2018-08-29",470,8,107,15),
  ("2017-11-11",443,5,4,37),
  ("2020-06-25",267,8,135,16),
  ("2018-04-02",301,3,64,44),
  ("2020-10-20",658,8,48,51);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2020-08-28",290,11,71,51),
  ("2019-05-19",210,4,82,48),
  ("2020-03-23",425,3,5,33),
  ("2018-07-03",80,9,99,3),
  ("2022-05-14",499,3,40,15),
  ("2022-04-24",394,3,106,9),
  ("2020-07-21",51,5,114,28),
  ("2017-05-02",81,11,89,22),
  ("2017-09-25",43,10,29,44),
  ("2021-01-02",78,2,129,37);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-11-30",687,2,123,55),
  ("2019-11-26",119,2,60,28),
  ("2020-02-29",354,2,21,15),
  ("2019-04-04",177,7,96,28),
  ("2022-11-12",677,7,121,21),
  ("2022-06-28",109,11,125,48),
  ("2021-09-04",190,5,76,33),
  ("2018-01-31",94,12,31,48),
  ("2020-07-05",4,7,55,22),
  ("2018-06-17",249,3,58,9);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-06-12",536,8,126,21),
  ("2022-05-18",355,9,128,48),
  ("2020-01-06",488,7,31,16),
  ("2018-10-14",87,10,1,37),
  ("2022-05-12",102,11,73,16),
  ("2018-11-26",64,4,79,36),
  ("2020-07-02",355,3,6,51),
  ("2020-05-03",110,3,47,51),
  ("2017-08-23",581,9,110,22),
  ("2022-10-16",503,11,65,10);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-10-06",402,10,18,29),
  ("2019-10-28",24,5,68,16),
  ("2020-09-06",36,5,138,21),
  ("2019-02-19",493,10,120,48),
  ("2017-05-23",7,5,79,55),
  ("2020-10-13",122,10,141,29),
  ("2022-01-09",142,7,41,22),
  ("2020-02-19",2,7,128,16),
  ("2017-08-01",536,12,135,3),
  ("2017-09-13",627,10,130,10);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-08-07",529,7,118,33),
  ("2019-07-25",229,12,139,3),
  ("2022-11-13",189,3,137,29),
  ("2017-06-19",472,3,72,22),
  ("2022-10-22",641,9,110,22),
  ("2018-12-15",535,11,89,22),
  ("2020-04-15",226,7,9,9),
  ("2022-12-24",655,2,23,48),
  ("2018-11-23",51,11,81,28),
  ("2019-07-22",55,5,120,2);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-01-26",534,8,139,22),
  ("2020-12-15",458,10,30,22),
  ("2019-03-05",558,3,72,9),
  ("2017-10-21",416,8,137,15),
  ("2021-12-04",456,7,16,36),
  ("2019-04-24",264,3,62,55),
  ("2022-04-12",663,7,5,15),
  ("2020-05-03",335,8,60,15),
  ("2019-01-26",543,11,51,10),
  ("2018-07-27",549,3,44,43);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-01-17",504,5,95,48),
  ("2020-12-15",62,9,109,48),
  ("2019-01-30",275,11,72,43),
  ("2022-10-09",500,1,144,36),
  ("2019-05-28",660,11,50,16),
  ("2018-04-01",409,5,145,9),
  ("2018-06-03",59,11,87,29),
  ("2021-11-19",99,9,81,21),
  ("2020-08-13",448,11,130,29),
  ("2018-12-20",497,6,107,15);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2018-08-04",176,10,94,15),
  ("2019-07-03",659,6,13,9),
  ("2019-05-11",496,4,142,15),
  ("2021-07-05",262,7,22,28),
  ("2017-11-22",678,11,23,21),
  ("2017-11-22",90,12,90,51),
  ("2022-02-06",330,6,43,22),
  ("2017-09-06",546,11,123,9),
  ("2022-07-17",7,6,20,29),
  ("2021-06-15",0,3,58,37);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2019-08-08",514,6,129,9),
  ("2021-02-04",554,8,38,10),
  ("2019-08-01",432,2,38,15),
  ("2019-11-14",293,1,94,21),
  ("2021-12-15",686,10,31,22),
  ("2021-01-27",619,10,43,43),
  ("2018-06-02",114,6,78,43),
  ("2021-12-27",540,5,42,51),
  ("2018-10-18",328,10,101,48),
  ("2022-07-29",522,10,40,51);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2021-01-19",189,7,71,29),
  ("2020-01-23",253,9,74,48),
  ("2022-07-07",150,5,94,10),
  ("2019-11-07",30,4,90,15),
  ("2020-06-16",405,12,136,16),
  ("2020-06-21",100,6,93,21),
  ("2017-09-26",386,5,113,44),
  ("2018-05-08",345,9,78,28),
  ("2020-03-16",74,3,94,48),
  ("2019-07-26",501,8,137,51);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-05-06",144,5,31,9),
  ("2021-05-09",212,9,59,3),
  ("2018-03-12",182,3,21,43),
  ("2018-04-25",381,5,115,3),
  ("2017-12-21",337,3,128,43),
  ("2020-04-28",193,2,142,15),
  ("2018-12-20",387,11,75,43),
  ("2019-04-27",224,1,53,16),
  ("2019-08-09",291,1,130,22),
  ("2019-07-06",125,11,102,33);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-07-21",495,10,75,48),
  ("2020-03-26",311,9,145,10),
  ("2019-03-19",502,5,2,22),
  ("2020-07-29",133,9,63,44),
  ("2017-06-14",367,10,9,22),
  ("2020-05-07",522,6,47,44),
  ("2017-10-12",221,9,36,22),
  ("2020-11-30",422,10,37,48),
  ("2019-11-26",405,9,114,10),
  ("2022-05-13",668,3,99,28);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2022-11-29",232,1,72,21),
  ("2022-05-03",162,8,48,33),
  ("2020-12-24",124,6,45,36),
  ("2019-06-23",671,6,120,33),
  ("2022-06-20",228,8,11,44),
  ("2019-12-23",215,12,2,10),
  ("2017-08-16",156,8,136,9),
  ("2021-09-20",99,4,67,44),
  ("2021-11-06",114,4,111,15),
  ("2021-08-12",112,10,85,44);
INSERT INTO Releve (dateReleve,donnee,idGaz,idCapteur,idPersonnel)
VALUES
  ("2017-06-26",91,2,21,10),
  ("2018-03-03",115,3,10,3),
  ("2021-07-21",671,1,143,3),
  ("2019-02-17",608,9,102,10),
  ("2018-03-01",551,4,25,37),
  ("2022-05-05",284,4,97,15),
  ("2021-10-04",448,4,49,28),
  ("2021-07-21",154,4,80,3),
  ("2018-12-08",648,10,90,36),
  ("2020-11-14",170,9,111,16);



ALTER TABLE Releve ADD FOREIGN KEY fk_relevegaz(idGaz) REFERENCES Gaz(idGaz);
ALTER TABLE Releve ADD FOREIGN KEY fk_relevecapteur(idCapteur) REFERENCES Capteur(idCapteur);
ALTER TABLE Releve ADD FOREIGN KEY fk_capteurpersonnel(idPersonnel) REFERENCES Personnel(idPersonnel);
