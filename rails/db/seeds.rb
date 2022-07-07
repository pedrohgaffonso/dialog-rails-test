# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# create users
User.create!(nome: 'Pedro Henrique',
    idade: 26,
    sexo: 'male',
    cidade: 'Santos',
    uf: 'SP')

99.times do |n|
nome = Faker::Name.name
idade = rand(21..100)
sexo = Faker::Gender.binary_type
cidade = Faker::Address.city
uf = Faker::Address.state_abbr
User.create!(nome: nome, idade: idade, sexo: sexo, cidade: cidade, uf: uf)
end