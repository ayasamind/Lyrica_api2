class Album < ApplicationRecord
    has_many :songs
    belongs_to :artists
end
