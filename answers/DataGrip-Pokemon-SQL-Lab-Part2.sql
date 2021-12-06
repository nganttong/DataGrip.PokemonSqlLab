# What are all the types of pokemon that a pokemon can have?
 select * from types;

# What is the name of the pokemon with id 45?
 select * from pokemons where id = 45;

# How many pokemon are there?
 SELECT count(*) from pokemons;

# How many types are there?
 SELECT count(*) from types;

# How many pokemon have a secondary type?
 SELECT COUNT(secondary_type) FROM pokemons WHERE secondary_type <> 'NULL';