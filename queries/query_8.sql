select distinct nomPersonnel, prenomPersonnel
from personnel
natural join agenttechnique
natural join Capteur
join releve on releve.idCapteur = capteur.idCapteur
natural join gaz
where typePollution = 'GRA'