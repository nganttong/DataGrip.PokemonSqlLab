# What is each pokemon's primary type? 
 SELECT pokemons.name AS Pokemon_Name, types.name AS Primary_Type FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id; 

# What is Rufflet's secondary type?
 SELECT pokemons.name AS Pokemon_Name, types.name AS Secondary_Type FROM pokemons INNER JOIN types on pokemons.secondary_type = types.id WHERE pokemons.name LIKE 'Rufflet'; 

# What are the names of the pokemon that belong to the trainer with trainerID 303?
 SELECT trainerID, pokemons.name AS 'Pokemon Name' FROM pokemon_trainer INNER JOIN pokemons ON  pokemon_trainer.pokemon_id = pokemons.id WHERE pokemon_trainer.trainerID LIKE '303'; 

# How many pokemon have a secondary type Poison
 SELECT COUNT(secondary_type) FROM pokemons WHERE secondary_type = 7;

# What are all the primary types and how many pokemon have that type?
 SELECT COUNT(pokemons.name) AS '# Pokemons', types.name AS 'Primary Type' FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id GROUP BY pokemons.primary_type;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
 SELECT Distinct(trainers.trainername) AS 'Trainers Name', COUNT(*) AS '# lvl 100 Pokemon' FROM trainers INNER JOIN pokemon_trainer ON pokemon_trainer.trainerID = trainers.trainerID WHERE pokelevel > 99 GROUP BY pokemon_trainer.trainerID ORDER BY COUNT(*) DESC;

# How many pokemon only belong to one trainer and no other?
 SELECT COUNT(pokemon_trainer.trainerID) AS '#People Who Caught This Pokemon', pokemons.name AS "Pokemo" FROM pokemon_trainer INNER JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id GROUP BY pokemon_id HAVING COUNT(pokemon_trainer.trainerID) = 1;