DROP PROCEDURE IF EXISTS requete_11;

DELIMITER //
CREATE PROCEDURE requete_11 (In g Varchar(128), Out nomRapport varchar(128))
BEGIN
select nomRapport
from rapport
natural join agent_administrateur
natural join personnel
natural join relevé
natural join (select *
from gaz
where nomGaz = g )as ChoixGaz;
END //
DELIMITER ;