select nomPersonnel
from Personnel natural join Agent_technique natural join (select *
from gaz 
where typePollution = 'GRA') as typePoll natural join relevé natural join capteur 