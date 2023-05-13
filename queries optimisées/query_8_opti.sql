select distinct nomPersonnel, prenomPersonnel
from (
	select idPersonnel, prenomPersonnel, nomPersonnel
    from personnel
    )as personnel
natural join agenttechnique
natural join (
	select idCapteur, idPersonnel
	from Capteur
    )as capteur
natural join (
	select idGaz, idcapteur
    from releve
    )as releve
natural join (
	select typepollution, idGaz
	from gaz
	where typePollution = 'GRA'
	) as gazacidificateur