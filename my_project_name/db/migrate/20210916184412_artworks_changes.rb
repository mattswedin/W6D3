class ArtworksChanges < ActiveRecord::Migration[5.2]
  def change
    add_index :artworks, :image_url, unique: true
    add_index :artworks, :artist_id

    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
  end
end
