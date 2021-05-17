json.array! @characters do |character|
    json.extract! character, :id, :name, :photo
    #json.extract! character.photo, :url
  end

  #json.extract! character, :id, :name, :photo
