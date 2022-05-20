# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Creating stuff..."

100.times do 
    Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg", rating: rand(0.0..10.0))
end


List.create!(name: "Rock'n'Roll")
List.create!(name: "Start with T")

puts "Finished!"
