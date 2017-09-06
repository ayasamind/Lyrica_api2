class Artist < ApplicationRecord
    self.primary_key = "artist_id"
    has_many :songs
    has_many :albums
end
