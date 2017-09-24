# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create 25 People to populate db
25.times do
	Person.create({
		name: Faker::GameOfThrones.character,
    age: Faker::Number.number(2),
    cpf: Faker::Number.number(11)
	})
end

# Create 24 Address to populate db
8.times do
	Adress.create({
		zipcode: Faker::Number.number(8),
    state: Faker::Address.state,
    city: Faker::GameOfThrones.city,
    street: Faker::Address.street_name,
    number: Faker::Address.building_number,
    person_id: 1
	})
end

8.times do
	Adress.create({
		zipcode: Faker::Number.number(8),
    state: Faker::Address.state,
    city: Faker::GameOfThrones.city,
    street: Faker::Address.street_name,
    number: Faker::Address.building_number,
    person_id: 2
	})
end

8.times do
	Adress.create({
		zipcode: Faker::Number.number(8),
    state: Faker::Address.state,
    city: Faker::GameOfThrones.city,
    street: Faker::Address.street_name,
    number: Faker::Address.building_number,
    person_id: 3
	})
end