select idRapport,nomRapport , dateRapport
from Rapport natural join (Agent_administratif
natural join (select * 
from (relevé natural join gaz)
where nomGaz = 'NH3') as a)
order by dateRapport