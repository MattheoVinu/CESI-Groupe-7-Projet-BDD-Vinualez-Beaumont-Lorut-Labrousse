DROP PROCEDURE IF EXISTS requete_11;

DELIMITER //
CREATE PROCEDURE requete_11 (In g Varchar(128))
BEGIN
select distinct nomRapport
from (
	select idPersonnel, nomRapport
    from Rapport
    )as rapport
natural join agentadministratif
natural join (
	select idGaz, idPersonnel
    from releve
    )as releve
natural join (
	select idGaz
	from gaz
	where nomGaz = g 
)as ChoixGaz;
END //
DELIMITER ;