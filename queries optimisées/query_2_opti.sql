select nomPersonnel, prenomPersonnel
from (
	select idPersonnel, nomPersonnel, prenomPersonnel
    from personnel
    )as Personnel
natural join(
	select distinct idPersonnel
	from (
		select idAgence, idPersonnel
        from capteur
        )as capteur
	natural join(
		select idAgence
		from (
				select idAgence, idVille
				from agence 
			)as agence
		natural join(
			select nomville, idville
			from ville 
			where nomVille = 'Bordeaux'
			)as ville
		)as Agence
	)as Capteur
    
    
    