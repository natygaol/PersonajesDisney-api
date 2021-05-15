class Character < ApplicationRecord
    has_many :movie_characters
    has_many :serie_characters
    has_many :movies, through: :movie_characters
    has_many :series, through: :serie_characters
    has_one_attached :photo
  
    validates :name, :weight, :age, :story, presence: true
end
