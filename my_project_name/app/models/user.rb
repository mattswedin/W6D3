# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :artwork_shares

    has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork

    
end

    
