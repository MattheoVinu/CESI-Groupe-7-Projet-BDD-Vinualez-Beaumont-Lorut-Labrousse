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
    adressePostale VARCHAR(256)
);

/* 
--------------------------------------
*/ 


/* 
--- Création de la table Agence ---
*/

CREATE TABLE Agence (
	idAgence int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nomAGence VARCHAR(128),
    idVille int
);

########### Remplissage de Agence #############

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
	idPersonnel int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idAgence int 
);

############ Remplissage des tables #############

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