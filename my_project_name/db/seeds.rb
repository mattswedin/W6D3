# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('users')
Artwork.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('artworks')
ArtworkShare.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('artworkshares')



user1 = User.create(username: 'Billy')
user2 = User.create(username: 'Daniel')
user3 = User.create(username: 'Sisco')
artwork1 = Artwork.create(title: 'monalisa', image_url: "idk.com", artist_id: user1.id)