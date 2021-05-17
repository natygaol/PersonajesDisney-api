json.array! @movies do |movie|
    json.extract! movie, :id, :title, :created_at
    json.extract! movie.photo, :url
  end