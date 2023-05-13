DROP PROCEDURE IF EXISTS requete_11;

DELIMITER //
CREATE PROCEDURE requete_11 (In g Varchar(128))
BEGIN
select distinct nomRapport
from rapport
natural join agentadministratif
natural join personnel
natural join releve
natural join (
	select *
	from gaz
	where nomGaz = g 
)as ChoixGaz;
END //
DELIMITER ;