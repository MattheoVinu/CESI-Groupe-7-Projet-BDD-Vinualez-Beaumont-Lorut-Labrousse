Select nomPersonnel, prenomPersonnel
from (agent_technique Natural Join Personnel)
natural join (Agence 
Natural join (select *
from ville 
where nomVille = 'Bordeaux')as ville1)
