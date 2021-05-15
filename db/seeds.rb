require "open-uri"

# Consulta si existe el user llamado user@email.com, si existe lo agarra y si no, hace rails.new con el email indicado

puts "creating users"
user = User.find_or_initialize_by(email: 'chikorita@pokemon.com')
user.password = "111111"
user.password_confirmation = "111111"
user.save

cinderella = Character.find_or_initialize_by(name: "Cinderella", age: 20, weight: "65", story: "Cinderella is the titular protagonist of Disney's 1950 animated feature film of the same name. After the death of her mother, her father remarried, believing that Cinderella needed a mother's care. Cinderella's father died shortly thereafter, upon which she was forced to work as a scullery maid for her wicked stepmother, Lady Tremaine and her two stepsisters, Anastasia and Drizella.")
cinderella.photo.attach(io: open("https://i.pinimg.com/originals/ca/2c/44/ca2c443f8dd100fc407b9fa97c86f324.jpg"), filename: "cinderella.jpg", content_type: "image/jpg")
cinderella.save!

cruella_de_vil = Character.find_or_initialize_by(name: "Cruella De Vil", age: 123, weight: "55", story: "Cruella De Vil is the main antagonist of Disney's 1961 animated feature film 101 Dalmatians. She is an eccentric, fashion-obsessed heiress who wishes to use the skins of 99 Dalmatian puppies to create a spotted fur coat.")
cruella_de_vil.photo.attach(io: open("https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/noticias-cine/alex-timbers-director-cruella-vil-creador-mozart-in-the-jungle/122824431-1-esl-ES/Alex-Timbers-posible-director-de-la-pelicula-de-Cruella-de-Vil.jpg"), filename: "cruella.jpg", content_type: "image/jpg")
cruella_de_vil.save!


puts "creating characters"

movie1 = Movie.find_or_initialize_by(title: "Cinderella Movie", rating: "4", genre: "Fantasy")
movie1.photo.attach(io: open("https://images-na.ssl-images-amazon.com/images/I/81qNmeW8MsL._SL1500_.jpg"), filename: "cindemovie.jpg", content_type: "image/jpg")
movie1.save!

movie2 = Movie.find_or_initialize_by(title: "101 Dalmatians", rating: "5", genre: "Adventure Comedy")
movie2.photo.attach(io: open("https://images-na.ssl-images-amazon.com/images/I/518tZ4k%2BM4L._SY445_.jpg"), filename: "101dalmatians.jpg", content_type: "image/jpg")
movie2.save!
#acá genero las asociaciones

cinderella_at_movie1 = MovieCharacter.create(movie: movie1, character: cinderella)
cruella_de_vil_at_movie2 = MovieCharacter.create(movie: movie2, character: cruella_de_vil)

# cinderella_at_movie1.save
# cruella_de_vil_at_movie2.save
puts "creating movies"

user2 = User.find_or_initialize_by(email: 'pikachu@pokemon.com')
user2.password = "111111"
user2.password_confirmation = "111111"
user2.save  

ariel = Character.find_or_initialize_by(name: "Ariel", age: 14, weight: "42", story: "Ariel is the protagonist of Disney's 1989 animated feature film, The Little Mermaid. She is the seventh and youngest daughter of King Triton and Queen Athena, rulers of the undersea kingdom of Atlantica.")
ariel.photo.attach(io: open("https://static1.abc.es/media/play/2019/07/04/sirenita-kuRD--620x349@abc.jpg"), filename: "ariel.jpg", content_type: "image/jpg")
ariel.save!

elsa = Character.find_or_initialize_by(name: "Elsa", age: 16, weight: "44", story: "Elsa the Snow Queen[2][3][4] is the deuteragonist of Disney's 2013 animated feature film Frozen and the protagonist of its 2019 sequel.")
elsa.photo.attach(io: open("https://i.blogs.es/6d2b8c/frozen-elsa-novia/840_560.jpg"), filename: "elsa.jpg", content_type: "image/jpg")
elsa.save!

movie3 = Movie.find_or_initialize_by(title: "The Little Mermaid", rating: "5", genre: "Musical Fantasy")
movie3.photo.attach(io: open("https://images-na.ssl-images-amazon.com/images/I/91oUfFeUUGL.jpg"), filename: "mermaid.jpg", content_type: "image/jpg")
movie3.save!

movie4 = Movie.find_or_initialize_by(title: "Frozen", rating: "5", genre: "Musical Fantasy")
movie4.photo.attach(io: open("https://img.europapress.es/fotoweb/fotonoticia_20150209093534_1024.jpg"), filename: "frozen.jpg", content_type: "image/jpg")
movie4.save!

ariel_at_movie3 = MovieCharacter.create(movie: movie3, character: ariel)
elsa_at_movie4 = MovieCharacter.create(movie: movie4, character: elsa)

# ariel_at_movie3.save
# elsa_at_movie4.save

puts "creating series"

user3 = User.find_or_initialize_by(email: 'mandalorian@starwars.com')
user3.password = "111111"
user3.password_confirmation = "111111"
user3.save  

baby_yoda = Character.find_or_initialize_by(name: "Grogu", age: 50, weight: "31", story: "Known to many simply as the Child, was a male Force-sensitive Mandalorian foundling that belonged to the same species as Jedi Grand Master Yoda and Jedi Master Yaddle. Grogu was born in the year 41 BBY, and was raised at the Jedi Temple on Coruscant.")
baby_yoda.photo.attach(io: open("https://spoiler.bolavip.com/__export/1605282192530/sites/bolavip/img/2020/11/13/baby_joda_the_mandalorian_crop1605280961517.jpg_554688468.jpg"), filename: "yoda.jpg", content_type: "image/jpg")
baby_yoda.save!

lady_bug = Character.find_or_initialize_by(name: "Lady Bug", age: 8 , weight: "33", story: "MIRACULOUS: TALES OF LADYBUG AND CAT NOIR, this comic book series features original content you can’t see on TV!")
lady_bug.photo.attach(io: open("https://1.bp.blogspot.com/-1ZbsdcA4u4I/YDoT06ahsxI/AAAAAAAAV9o/6baKRkzpu8oq4Q-8KW5Dpkk7O3SkzlaJQCLcBGAsYHQ/s16000/miraculous-ladybug-disney-plus.jpg"), filename: "lady.jpg", content_type: "image/jpg")
lady_bug.save!


serie1 = Serie.find_or_initialize_by(title: "The Mandalorian", rating: 5, genre: "Live-Action Series")
serie1.photo.attach(io: open("https://estaticos-cdn.elperiodico.com/clip/6e0e1d5f-8851-4677-b616-4cca88f99ff5_alta-libre-aspect-ratio_default_0.jpg"), filename: "mandalorian.jpg", content_type: "image/jpg")
serie1.save!

serie2 = Serie.find_or_initialize_by(title: "Miraculous Tales of Lady Bug and Cat Noir", rating: 4, genre: "Animated-Series")
serie2.photo.attach(io: open("https://i.ytimg.com/vi/z3AOLLTO68w/maxresdefault.jpg"), filename: "miraculous.jpg", content_type: "image/jpg")
serie2.save!

baby_yoda_at_serie1 = SerieCharacter.create(serie: serie1, character: baby_yoda)
lady_bug_at_serie2 = SerieCharacter.create(serie: serie2, character: lady_bug)



