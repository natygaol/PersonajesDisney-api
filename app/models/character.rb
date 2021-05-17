class Character < ApplicationRecord
    has_many :movie_characters
    has_many :serie_characters
    has_many :movies, through: :movie_characters
    has_many :series, through: :serie_characters
    has_one_attached :photo
    #before_save :setphoto   #modificado estamos probando
    #accepts_nested_attributes_for :photo
  
    validates :name, :weight, :age, :story, presence: true

    # PHOTOS = {
    #     "Cinderella" => "https://i.pinimg.com/originals/ca/2c/44/ca2c443f8dd100fc407b9fa97c86f324.jpg",
    #     "Cruella_de_vil" => "https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/noticias-cine/alex-timbers-director-cruella-vil-creador-mozart-in-the-jungle/122824431-1-esl-ES/Alex-Timbers-posible-director-de-la-pelicula-de-Cruella-de-Vil.jpg"
    # }
    # def setphoto
    #     self.picture = PHOTOS[self.title]
    # end
    
end
