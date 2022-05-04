# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all

100.times do |index|
  Movie.create(name: Faker::Movie.title, genre: ["action", "horreur", "comédie", "drame"].sample, 
    director: Faker::Name.name, year: rand(1900..2020), my_rating: Faker::Number.within(range: 1..5), 
    allocine_rating: Faker::Number.between(from: 0.0, to: 5.0).round(1),
    synopsis: Faker::Lorem.paragraph(sentence_count: 2), already_seen: Faker::Boolean.boolean)
end