select nomRegion, sum(donnee) totalEmissions
from (
	select idGaz 
	from gaz 
	where typePollution = 'GES'
	)as  GazGES
natural join (
	select idCapteur, idGaz, donnee
	from releve 
	where dateReleve > '2019-12-31'
	and dateReleve < '2021-01-01'
	)as Releves
natural join (
	select idCapteur, idRegion
    from capteur
    )as capteur
natural join region
group by idRegion