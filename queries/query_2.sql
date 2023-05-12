Select distinct(nomPersonnel), prenomPersonnel
from agenttechnique Natural Join Personnel
natural join capteur
natural join agence 
Natural join ville
where nomville = 'Bordeaux'