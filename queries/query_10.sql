use projet_bdd;
select nomPersonnel, prenomPersonnel, nbrapports / an
from (
	select distinct idPersonnel, nomPersonnel, prenomPersonnel, datediff(now(),datePoste)/365 an
	from(
		select idVille
		from ville
		where nomVille = 'Toulouse'
	)as Toulouse
	natural join agence
	natural join (
		select idCapteur, idAgence
		from capteur
	)as capt
	natural join (
		select idCapteur, idPersonnel
		from releve
	)as rel
	natural join agentadministratif
	natural join (
		select idPersonnel, nomPersonnel, prenomPersonnel, datePoste
		from personnel
	)as persagence
	group by idPersonnel
) as PersVille
natural join (
	select idPersonnel, count(*) nbrapports
	from personnel
	natural join agentadministratif
	natural join rapport
	group by idPersonnel) as nbrapport