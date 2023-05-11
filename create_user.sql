DROP USER user; 
CREATE USER user IDENTIFIED BY 'mdp';

GRANT SELECT(idPersonnel, nomPersonnel, prenomPersonnel, datePoste) ON bdd.personnel TO user;