json.extract! @serie, :id, :title, :created_at, :rating, :genre
json.serie_characters @serie.serie_characters do |serie_characters|
  json.extract! serie_characters.character, :name
end

# Devolverá todos los campos de la película o serie junto a los personajes asociados a la misma