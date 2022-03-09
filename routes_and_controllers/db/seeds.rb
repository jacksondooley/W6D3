# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
# debugger

a = User.create(username: 'rick@hotmail')
b = User.create(username: 'lp@hotmail')

Artwork.create(title: 'sea of rick', image_url: 'bomb.com', artist_id: b)
Artwork.create(title: 'sea of lp', image_url: 'lp.com', artist_id: a)