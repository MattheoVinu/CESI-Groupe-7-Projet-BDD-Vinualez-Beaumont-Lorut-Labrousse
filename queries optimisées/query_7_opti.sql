select distinct nomRapport , dateRapport
from (
	select nomRapport, dateRapport, idPersonnel
    from Rapport
    )as rapport
natural join agentadministratif
natural join (
	select * 
	from (
		select idPersonnel, idGaz 
		from releve
        ) as releve 
	natural join (
		select nomGaz, idGaz
        from gaz
		where nomGaz = 'NH3 (ammoniac)'
        )as gaz
    ) as releveGaz
order by dateRapport