json.array! @characters do |character|
    json.extract! character, :id, :name, :age, :weight, :story, :url
    #json.extract! character.photo, :url
  end

  #acá solo debo dejar name and photo.