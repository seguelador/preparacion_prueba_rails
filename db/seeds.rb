# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.destroy_all

Pokemon.create(name: 'Pikachu', description: 'Pokemon ratón y que paza')
Pokemon.create(name: 'Bulbasaur', description: 'Soy una planta')
Pokemon.create(name: 'Charmander', description: 'Si se me apaga la llama de la cola, muero :(')
Pokemon.create(name: 'Ho Ho', description: 'Nadie me conoce')
Pokemon.create(name: 'Squartle', description: 'Tortuga que tira agua')
