json.extract! @character, :id, :name, :age, :weight, :story
  json.movies @character.movies do |movie|
    json.extract! movie, :id, :title, :rating, :genre
  end
  # json.series @character.series.each do |serie|
  #   json.extract! serie, :id, :title, :rating, :genre
  # end





#falta foto en show