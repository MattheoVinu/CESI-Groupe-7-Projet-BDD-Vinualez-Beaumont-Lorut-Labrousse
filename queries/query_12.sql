select * 
from (
	select nomRegion, count(idcapteur) nbCap
	from region
	natural left join capteur
	group by nomRegion
)as nbCap
natural join (
	select nomRegion, count(idAgence) nbAg
	from region
	natural left join (
		select * from agence
		natural join ville
    )as agenceville 
	group by nomRegion
)as nbAg
where nbCap < nbAg