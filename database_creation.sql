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
--- Création de la table Ville
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
--- Création de la table Ville
*/

