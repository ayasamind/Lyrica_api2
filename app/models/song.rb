class Song < ApplicationRecord
     belongs_to :albums
     belongs_to :artists
     serialize :songs, JSON
end
