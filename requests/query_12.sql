select nomRegion, nbCap, nbAg
from(
select nomRegion, count(idCapteur) nbCap, count(idAgence) nbAg
from region
natural join agence
natural join capteur
group by nomRegion ) as count
where nbCap < nbAg