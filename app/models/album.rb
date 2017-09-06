class Album < ApplicationRecord
    self.primary_key = "album_id"
    has_many :songs
    belongs_to :artist
end
