select nomGaz, sum(donnee) Emissions
	from (
		select idregion, idcapteur
        from capteur
        )as releve
	natural join (
		select idCapteur, idgaz, donnee
        from releve
		where dateReleve <= '2020-12-31'
		and datereleve >= '2020-01-01')as date
natural join (
	select idGaz, nomGaz
    from gaz
    )as gaz
natural join (
	select idRegion 
	from region
	 where nomRegion = 'Île-de-France') as region
group by nomGaz
order by Emissions desc