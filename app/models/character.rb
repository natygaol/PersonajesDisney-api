class Character < ApplicationRecord
    has_many :movie_characters
    has_many :serie_characters
    has_many :movies, through: :movie_characters
    has_many :series, through: :serie_characters
  
    validates :name, :weight, :age, :story, presence: true
    #falta agregar photo

    #para la busqueda de personajes by name
    include PgSearch::Model
    pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `character` will return something!
    }
end
