class Movie < ApplicationRecord
    has_many :movie_characters
    has_many :characters, through: :movie_characters

    validates :title, :rating, :genre, presence: true
    
end
