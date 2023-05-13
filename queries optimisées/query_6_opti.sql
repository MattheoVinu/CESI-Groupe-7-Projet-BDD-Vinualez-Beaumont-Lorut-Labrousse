select nomSecteur, Emissions
from (
		select idSecteur, sum(donnee) Emissions
		from (
        select idSecteur, donnee
		from (
			select idCapteur, donnee
            from releve
            )as releve
		natural join (
			select idRegion, idCapteur, idSecteur
            from capteur
            ) as capteur
		natural join (
        select *
        from region
		where nomregion ='Île-de-France' )as region
) as ReleveCpateur
group by idSecteur) as TotEmissions
natural join Secteur
where Emissions = (
	select max(Emissions) Emission
	from (
		select idSecteur, sum(donnee) Emissions
		from (
        select idSecteur, donnee
		from (
			select idCapteur, donnee
            from releve
            )as releve
		natural join (
			select idRegion, idCapteur, idSecteur
            from capteur
            ) as capteur
		natural join (
        select *
        from region
		where nomregion ='Île-de-France' )as region
		) as ReleveCpateur
	group by idSecteur) as TotEmissions) 