# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Author.destroy_all
Book.destroy_all

bil = Author.create(name:'Billy Thortin', age:45)
ann = Author.create(name:'Annie Bangs', age:54)

Book.create(title:'Hope',genre:'fiction', author_id:bil.id)
Book.create(title:'Grace',genre:'History', author_id:bil.id)
Book.create(title:'Days',genre:'Fantasy', author_id:ann.id)
Book.create(title:'Thunder',genre:'fiction', author_id:ann.id)
Book.create(title:'Bad Fun',genre:'Fantasy', author_id:bil.id)