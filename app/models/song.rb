class Song < ApplicationRecord
     self.primary_key = "song_id"
     belongs_to :album
     belongs_to :artist
     serialize :songs, JSON
end
