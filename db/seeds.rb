# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Author.destroy_all
Book.destroy_all

25.times do
  Author.create(name:Faker::Book.author, age:Faker::Date.between(from: '1990-09-23', to: '2022-09-25')))
25.times do
  Book.create(name:Faker::Book.title, genre:Faker::Book.genre) 

end 
