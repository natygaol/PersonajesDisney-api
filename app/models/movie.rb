class Movie < ApplicationRecord
    has_many :movie_characters
    has_many :characters, through: :movie_characters
    has_one_attached :photo

    validates :title, :rating, :genre, presence: true

    # para filtrar
    scope :filter_by_genre, ->(genre) { where genre: genre }
    
end
