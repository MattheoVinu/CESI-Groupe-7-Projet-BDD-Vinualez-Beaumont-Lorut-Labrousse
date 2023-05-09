select * from (
select idSecteur, sum(donnee) Emissions
from (select idSecteur, donnee
from relevé natural join capteur) as ReleveCpateur
group by idSecteur) as TotEmissions
where Emissions = (
select max(Emissions) Emission
from (
select idSecteur, sum(donnee) Emissions
from (select idSecteur, donnee
from relevé natural join capteur) as ReleveCpateur
group by idSecteur) as TotEmissions)