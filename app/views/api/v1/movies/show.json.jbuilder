json.extract! @movie, :id, :title, :created_at, :rating, :genre
json.movie_characters @movie.movie_characters do |movie_characters|
  json.extract! movie_characters.character, :name
end

# Devolverá todos los campos de la película o serie junto a los personajes asociados a la misma