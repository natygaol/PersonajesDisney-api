class Character < ApplicationRecord
    has_many :movie_characters
    has_many :serie_characters
    has_many :movies, through: :movie_characters
    has_many :series, through: :serie_characters
    has_one_attached :photo
    # before_save :setphoto   #modificado estamos probando
    # accepts_nested_attributes_for :photo
  
    validates :name, :weight, :age, :story, presence: true

    # para filtrar
    scope :filter_by_age, ->(age) { where age: age }
    scope :filter_by_weight, ->(weight) { where weight: weight }
    scope :filter_by_movie, ->(movie_ids) { joins(:movies).where(movies: { id: movie_ids }) }
    #scope :by_age, ->(age) { where(:age => age)}
    # Ex:- scope :active, -> {where(:active => true)}

    # para la busqueda de personajes by name
    include PgSearch::Model
    pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `character` will return something!
    }

end
