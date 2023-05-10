select nomGaz, Sum(donnee) Emissions
from gaz natural join (select * from relevé
where dateReleve <=31/12/2020
and datereleve >= 01/01/2020) as a 
natural join  capteur 
natural join (select * from region
where nomRegion = 'Ile de France')as b
group by nomGaz