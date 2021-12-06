# Write a query that returns the following collumns:
# Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
# Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
# Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.

# Query: 
SELECT p.name AS 'Pokemon Name',
t.trainername AS 'Trainer Name',
pt.pokelevel AS 'Level',
t1.name AS 'Primary Type',
t2.name AS 'Secondary Type'
FROM pokemon_trainer pt
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types t1 ON p.primary_type = t1.id
JOIN types t2 ON p.secondary_type = t2.id
ORDER BY (maxhp + attack + defense + spatk + spdef + speed) DESC, pt.pokelevel DESC; 
# pokemon strength is based on stats, highest stats and higest level = strongest pokemon. I like pokemon, not sql :(