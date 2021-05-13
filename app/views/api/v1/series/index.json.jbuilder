json.array! @series do |serie|
    json.extract! serie, :id, :title, :created_at
    #json.extract! serie.photo, :url
  end