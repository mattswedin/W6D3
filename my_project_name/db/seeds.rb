# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

User.create(username: 'Billy')
User.create(username: 'Daniel')
User.create(username: 'Sisco')
Artwork.create(title: 'monalisa', image_url: "idk.com", artist_id: 3)