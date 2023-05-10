select prenomPersonnel, nomPersonnel, count(idReleve) / datediff(datePoste, now()) RapportRelevesTemps
from agence
natural join (select * from ville
where nomVille = 'Toulouse') as toulouse
natural join capteur
natural join relevé
natural join agent_administratif
natural join personnel
group by idPersonnel