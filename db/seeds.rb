# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Movie.destroy_all
List.destroy_all

puts "Creating 4 movies..."

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
puts "Create 1 movie"
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
puts "Create 1 movie"
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
puts "Create 1 movie"
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "Create 1 movie"


puts "Creating 2 lists..."

file = URI.open("https://images8.alphacoders.com/110/1102284.jpg")
list_hp = List.new(name: "Harry Potter")
list_hp.photo.attach(io: file, filename: "hp.png", content_type: "image/png")
list_hp.save
puts "Create HP list"

file = URI.open("https://images.pling.com/img/00/00/61/26/90/1551956/b46947476204206d2f280286e20d15f8528821ccbed13ca99deeb28d99a310694bce.jpg")
list_hp = List.new(name: "Super Heroes")
list_hp.photo.attach(io: file, filename: "avengers.png", content_type: "image/png")
list_hp.save
puts "Create Avenger list"

puts 'Finished!'
