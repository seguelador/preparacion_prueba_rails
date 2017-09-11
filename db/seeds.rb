# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Catch.destroy_all
User.destroy_all
Pokemon.destroy_all

user_1 = User.create(name: 'Matias Seguel', email: 'matias.seguel.estay@gmail.com', password: 'lamafia', password_confirmation: 'lamafia')

pokemon_1 = Pokemon.create(name: 'Pikachu', description: 'Electrico')
pokemon_2 = Pokemon.create(name: 'Bulbasaur', description: 'Planta')
pokemon_3 = Pokemon.create(name: 'Charmander', description: 'Fuego')
pokemon_4 = Pokemon.create(name: 'Ho Ho', description: 'Legendario')
pokemon_5 = Pokemon.create(name: 'Squartle', description: 'Agua')

Catch.create(user: user_1, pokemon: pokemon_1, level: 1)
Catch.create(user: user_1, pokemon: pokemon_2, level: 1)
Catch.create(user: user_1, pokemon: pokemon_3, level: 1)
Catch.create(user: user_1, pokemon: pokemon_4, level: 1)
Catch.create(user: user_1, pokemon: pokemon_5, level: 1)