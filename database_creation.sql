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

########## Remplissage de Capteur ###########

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

########## Remplissage de Releve ###########

ALTER TABLE Releve ADD FOREIGN KEY fk_relevegaz(idGaz) REFERENCES Gaz(idGaz);
ALTER TABLE Releve ADD FOREIGN KEY fk_relevecapteur(idCapteur) REFERENCES Capteur(idCapteur);
ALTER TABLE Releve ADD FOREIGN KEY fk_capteurpersonnel(idPersonnel) REFERENCES Personnel(idPersonnel);
