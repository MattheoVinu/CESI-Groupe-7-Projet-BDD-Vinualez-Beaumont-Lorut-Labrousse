select idRegion, sum(donnee) totalEmissions
from capteur 
natural join ( (select * from gaz where typePollution = 'GES')as  GazGES
natural join (select * from Relevé 
where dateReleve > 31/12/2019
and dateReleve < 01/01/2021)as Releves)
group by idRegion