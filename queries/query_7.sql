select idRapport,nomRapport , dateRapport
from Rapport natural join (agentadministratif
natural join (select * 
from (releve natural join gaz)
where nomGaz = 'NH3 (ammoniac)') as a)
order by dateRapport