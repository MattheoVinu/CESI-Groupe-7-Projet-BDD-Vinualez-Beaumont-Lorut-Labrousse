select nomRegion, sum(donnee) totalEmissions
from (
	select * 
	from gaz 
	where typePollution = 'GES'
)as  GazGES
natural join (
select * 
	from releve 
	where dateReleve > '2019-12-31'
	and dateReleve < '2021-01-01'
)as Releves
join capteur on capteur.idcapteur = Releves.idcapteur
natural join region
group by idRegion