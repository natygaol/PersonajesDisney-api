json.extract! @character, :id, :name, :age, :weight, :story
json.movies @character.movies.each do |movie|
  json.extract! movie, :id, :title, :rating, :gender
end

json.series @character.series.each do |serie|
json.extract! serie, :id, :title, :rating, :gender
end

#falta foto en show