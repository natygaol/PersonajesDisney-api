class Serie < ApplicationRecord
    has_many :serie_characters
    has_many :characters, through: :serie_characters

    validates :title, :rating, :genre, presence: true
end
