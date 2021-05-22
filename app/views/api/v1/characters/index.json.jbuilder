json.array! @characters do |character|
    json.id character.id
    json.name character.name
    json.photo character.photo
    # json.extract! character, :id, :name, :photo
    #json.extract! character.photo, :url
  end

  #json.extract! character, :id, :name, :photo
