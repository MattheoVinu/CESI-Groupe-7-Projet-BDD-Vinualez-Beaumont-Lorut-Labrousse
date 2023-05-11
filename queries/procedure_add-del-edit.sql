use projet_bdd;
drop procedure if exists delAgence;
DELIMITER //
CREATE PROCEDURE delAgence (in del_nom varchar(128))
BEGIN
delete from Agence where nomAgence = del_nom;
END // 
DELIMITER ;

drop procedure if exists modifAgence;
DELIMITER //
CREATE PROCEDURE modifAgence (in old_nom varchar(128) ,in nv_nom varchar(128))
BEGIN
UPDATE Agence SET nomAgence = nv_nom
where nomAgence = old_nom
;
END // 
DELIMITER ;

drop procedure if exists addAgence;
DELIMITER //
CREATE PROCEDURE addAgence (in nomNvAgence varchar(128), in idvillecor int)
BEGIN
INSERT INTO agence (nomAgence, idville)
values (nomNvAgence, idvilleCor) 
;
END // 
DELIMITER ;