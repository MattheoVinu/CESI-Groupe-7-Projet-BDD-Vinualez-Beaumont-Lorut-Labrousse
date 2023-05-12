select nomGaz, sum(donnee) Emissions
from (
	select idGaz, idRegion, donnee
	from releve 
	join capteur on releve.idCapteur = capteur.idCapteur
	where dateReleve <= '2020-12-31'
	and datereleve >= '2020-01-01')as a 
natural join gaz
natural join (select idRegion from region where nomRegion = 'Île-de-France') as b
group by nomGaz
order by Emissions desc