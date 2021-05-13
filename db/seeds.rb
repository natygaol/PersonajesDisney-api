# Consulta si existe el user llamado user@email.com, si existe lo agarra y si no, hace rails.new con el email indicado
user = User.find_or_initialize_by(email: 'chikorita@pokemon.com')
user.password = "111111"
user.password_confirmation = "111111"
user.save

cinderella = Character.find_or_initialize_by(name: "Cinderella", age: 20, weight: "65", story: "Cinderella is the titular protagonist of Disney's 1950 animated feature film of the same name. After the death of her mother, her father remarried, believing that Cinderella needed a mother's care. Cinderella's father died shortly thereafter, upon which she was forced to work as a scullery maid for her wicked stepmother, Lady Tremaine and her two stepsisters, Anastasia and Drizella.")


cruella_de_vil = Character.find_or_initialize_by(name: "Cruella De Vil", age: 123, weight: "55", story: "Cruella De Vil is the main antagonist of Disney's 1961 animated feature film 101 Dalmatians. She is an eccentric, fashion-obsessed heiress who wishes to use the skins of 99 Dalmatian puppies to create a spotted fur coat.")

#guarda también el personaje porque estoy instanciando el usuario

cinderella.save
cruella_de_vil.save

movie1 = Movie.find_or_initialize_by(title: "Cinderella Movie", rating: "4", gender: "Fantasy")
movie2 = Movie.find_or_initialize_by(title: "101 Dalmatians", rating: "5", gender: "Adventure Comedy")

#acá genero las asociaciones

cinderella_at_movie1 = MovieCharacter.create(movie: movie1, character: cinderella)
cruella_de_vil_at_movie2 = MovieCharacter.create(movie: movie2, character: cruella_de_vil)

# cinderella_at_movie1.save
# cruella_de_vil_at_movie2.save

user2 = User.find_or_initialize_by(email: 'pikachu@pokemon.com')
user2.password = "111111"
user2.password_confirmation = "111111"
user2.save  

ariel = Character.find_or_initialize_by(name: "Ariel", age: 14, weight: "42", story: "Ariel is the protagonist of Disney's 1989 animated feature film, The Little Mermaid. She is the seventh and youngest daughter of King Triton and Queen Athena, rulers of the undersea kingdom of Atlantica.")
elsa = Character.find_or_initialize_by(name: "Elsa", age: 16, weight: "44", story: "Elsa the Snow Queen[2][3][4] is the deuteragonist of Disney's 2013 animated feature film Frozen and the protagonist of its 2019 sequel.")

ariel.save
elsa.save

movie3 = Movie.find_or_initialize_by(title: "The Little Mermaid", rating: "5", gender: "Musical Fantasy")
movie4 = Movie.find_or_initialize_by(title: "Frozen", rating: "5", gender: "Musical Fantasy")

ariel_at_movie3 = MovieCharacter.create(movie: movie3, character: ariel)
elsa_at_movie4 = MovieCharacter.create(movie: movie4, character: elsa)

# ariel_at_movie3.save
# elsa_at_movie4.save


user3 = User.find_or_initialize_by(email: 'mandalorian@starwars.com')
user3.password = "111111"
user3.password_confirmation = "111111"
user3.save  

baby_yoda = Character.find_or_initialize_by(name: "Grogu", age: 50, weight: "31", story: "Known to many simply as the Child, was a male Force-sensitive Mandalorian foundling that belonged to the same species as Jedi Grand Master Yoda and Jedi Master Yaddle. Grogu was born in the year 41 BBY, and was raised at the Jedi Temple on Coruscant.")
lady_bug = Character.find_or_initialize_by(name: "Lady Bug", age: 8 , weight: "33", story: "MIRACULOUS: TALES OF LADYBUG AND CAT NOIR, this comic book series features original content you can’t see on TV!")

baby_yoda.save
lady_bug.save

serie1 = Serie.find_or_initialize_by(title: "The Mandalorian", rating: 5, gender: "Live-Action Series")
serie2 = Serie.find_or_initialize_by(title: "Miraculous Tales of Lady Bug and Cat Noir", rating: 4, gender: "Animated-Series")

baby_yoda_at_serie1 = SerieCharacter.create(serie: serie1, character: baby_yoda)
lady_bug_at_serie2 = SerieCharacter.create(serie: serie2, character: lady_bug)