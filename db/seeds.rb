# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all
Genre.destroy_all

beyonce = Artist.create(name:"Beyonce Knowles", bio:"I'm an r&b singer")
nicki = Artist.create(name:"Nicki Minaj", bio:"I'm a rapper")
taylor = Artist.create(name:"Taylor Swift", bio:"I'm a pop singer")
carrie = Artist.create(name:"Carrie Underwood", bio:"I'm a country singer")
usher = Artist.create(name:"Usher Raymond", bio:"I'm an R&b Singer")
meek = Artist.create(name:"Meek Mill", bio:"I'm a rapper")
jonas = Artist.create(name:"The Jonas Brothers", bio:"I'm a pop singer")
billie = Artist.create(name:"Billie Ray Cyrus", bio:"I'm a country singer")

rb= Genre.create(name:"R&B")
country= Genre.create(name:"Country")
pop= Genre.create(name:"Pop")
rap= Genre.create(name:"Rap")

Song.create(name: "If I were a boy", genre: rb, artist: beyonce)
Song.create(name: "Old town road", genre: country, artist: billie)
Song.create(name:"Megatron", genre: rap, artist: nicki)