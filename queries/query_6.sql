select nomSecteur, Emissions
from (
	select idSecteur, sum(donnee) Emissions
	from (
	select idSecteur, donnee
	from releve 
	join capteur on releve.idCapteur = capteur.idCapteur
	natural join region
	where nomregion ='Île-de-France'
) as ReleveCpateur
group by idSecteur) as TotEmissions
natural join Secteur
where Emissions = (
	select max(Emissions) Emission
	from (
		select idSecteur, sum(donnee) Emissions
		from (
        select idSecteur, donnee
		from releve 
		join capteur on releve.idCapteur = capteur.idCapteur
        natural join region
        where nomregion ='Île-de-France'
	) as ReleveCpateur
	group by idSecteur) as TotEmissions)