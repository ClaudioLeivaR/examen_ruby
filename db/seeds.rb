# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

for i in (0..9)
    i = Building.create([
            {nombre: Faker::Games::Zelda.character,
            direccion: Faker::Address.street_address,
            ciudad: Faker::Address.city}
        ])
end
for i in (1..50)
    i= Apartment.create([
        {numero: rand(100..999),
        building_id: rand(1..10)}
    ])
end