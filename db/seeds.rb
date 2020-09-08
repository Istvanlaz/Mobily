# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'

Category.destroy_all
SubCategory.destroy_all
Product.destroy_all
# User.destroy_all

puts 'Database cleaned.'

# puts "Creating some useful users..."

# user_1 = User.new( {
#   # username: "Jery",
#   email: "Jerry.slang@hotmail.com",
#   password: 'WeAreMobily1!!',
#   password_confirmation: 'WeAreMobily1!!'
# })
# # user_1.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_1.save!

# user_2 = User.new( {
#   # username: "sherry",
#   email: "sherry.stan@hotmail.com",
#   password: 'WeAreMobily1!!',
#   password_confirmation: 'WeAreMobily1!!'
# })
# # user_2.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_2.save!

# user_3 = User.new( {
#   # username: "ricer",
#   email: "ricer.lo@outlook.com",
#   password: 'WeAreMobily1!!',
#   password_confirmation: 'WeAreMobily1!!'
# })
# # user_3.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_3.save!

# user_4 = User.new( {
#   # username: "jug",
#   email: "jug.zar@oneup.com",
#   password: 'WeAreMobily1!!',
#   password_confirmation: 'WeAreMobily1!!'
# })
# # user_4.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_4.save!

# user_5 = User.new( {
#   # username: "gola",
#   email: "gola.bolo@gmail.com",
#   password: 'WeAreMobily1!!',
#   password_confirmation: 'WeAreMobily1!!'
# })
# user_5.save!

# puts "Total number of users: #{User.all.count}"

puts 'Fetching Street names in Brussels...'


streets_1000 = ["Avenue Air Marshal Coningham", "Avenue Antoine Depage", "Avenue Casalta", "Avenue d'Auderghem", "Avenue de Boitsfort", "Avenue de Cérès", "Avenue de Cortenbergh", "Avenue de Diane", "Avenue de Flore", "Avenue de Groenendael", "Avenue de la Belle Alliance", "Avenue de la Brabançonne", "Avenue de la Chevalerie", "Avenue de la Clairière", "Avenue de la Colombie", "Avenue de la Forêt", "Avenue de la Joyeuse Entrée", "Avenue de la Laiterie", "Avenue de la Lisière", "Avenue de la Reine", "Avenue de la Renaissance", "Avenue de la Sapinière", "Avenue de la Toison d'Or", "Avenue de l'Héliport", "Avenue de l'Orée", "Avenue de l'Uruguay", "Avenue de l'Yser", "Avenue de Saint-Job", "Avenue de Stalingrad", "Avenue de Watermael", "Avenue des Abeilles", "Avenue des Arts", "Avenue des Coccinelles", "Avenue des Courses", "Avenue des Genêts", "Avenue des Mauves", "Avenue des Nerviens", "Avenue des Phalènes", "Avenue des Scarabées", "Avenue du Brésil", "Avenue du Champ de Course", "Avenue du Chili", "Avenue du Congo", "Avenue du Derby", "Avenue du Maelbeek", "Avenue du Panorama", "Avenue du Pérou", "Avenue du Port", "Avenue du Réservoir", "Avenue du Venezuela", "Avenue du Vivier d'Oie", "Avenue Emile De Mot", "Avenue Emile Duray", "Avenue Franklin Roosevelt", "Avenue Jeanne", "Avenue John Kennedy", "Avenue Legrand", "Avenue Livingstone", "Avenue Lloyd George", "Avenue Louise", "Avenue Marnix", "Avenue Michel-Ange", "Avenue Palmerston", "Avenue Paul Héger", "Avenue S' Heeren Huys", "Avenue Suzanne", "Avenue Victoria", "Rue au Seigle", "Rue Auguste Orts", "Rue aux Choux", "Rue aux Fleurs", "Rue aux Laines", "Rue Baron Horta", "Rue Belliard", "Rue Blaes", "Rue Blanche", "Rue Bodeghem", "Rue Bodenbroek", "Rue Boduognat", "Rue Bordiau", "Rue Brederode", "Rue Breughel", "Rue Breydel", "Rue Calvin", "Rue Camusel", "Rue Chair et Pain", "Rue Charles Buls", "Rue Charles Hanssens", "Rue Charles Martel", "Rue Charles Quint", "Rue Christine", "Rue Coppens", "Rue Cuerens", "Rue d'Accolay", "Rue d'Alost", "Rue d'Anderlecht", "Rue d'Ardenne", "Rue d'Arenberg", "Rue d'Argent", "Rue d'Arlon", "Rue d'Artois", "Rue d'Assaut", "Rue Dautzenberg", "Rue de Barchon", "Rue de Belle Vue", "Rue de Bon Secours", "Rue De Crayer", "Rue de Cureghem", "Rue de Dieghem", "Rue de Dinant", "Rue de Flandre", "Rue de Florence", "Rue de Gravelines", "Rue de Hornes", "Rue de la Banque", "Rue de la Besace", "Rue de la Blanchisserie", "Rue de la Bonté", "Rue de la Bourse", "Rue de la Braie", "Rue de la Buanderie", "Rue de la Caserne", "Rue de la Chancellerie", "Rue de la Chapelle", "Rue de la Charité", "Rue de la Chaufferette", "Rue de la Cigogne", "Rue de la Clé", "Rue de la Collégiale", "Rue de la Colline", "Rue de la Concorde", "Rue de la Croix", "Rue de la Croix de Fer", "Rue de la Dyle", "Rue de la Fiancée", "Rue de la Flèche", "Rue de la Fontaine", "Rue de la Forêt d'Houthulst", "Rue de la Fourche", "Rue de la Gouttière", "Rue de la Grande Ile", "Rue de la Grosse Tour", "Rue de la Loi", "Rue de la Longue Haie", "Rue de la Mâchoire", "Rue de la Madeleine", "Rue de la Montagne", "Rue de la Pacification", "Rue de la Paille", "Rue de la Pépinière", "Rue de la Philanthropie", "Rue de la Plume", "Rue de la Pompe", "Rue de la Porte Rouge", "Rue de la Poudrière", "Rue de la Presse", "Rue de la Prévoyance", "Rue de la Querelle", "Rue de la Rasière", "Rue de la Régence", "Rue de la Reine", "Rue de la Reinette", "Rue de la Révolution", "Rue de la Roue", "Rue de la Sablonnière", "Rue de la Samaritaine", "Rue de la Science", "Rue de la Senne", "Rue de la Serrure", "Rue de la Tête d'Or", "Rue de la Tribune", "Rue de la Vallée", "Rue de la Vanne", "Rue de la Verdure", "Rue de la Vierge Noire", "Rue de la Violette", "Rue de l'Abattoir", "Rue de l'Abbaye", "Rue de l'Abdication", "Rue de l'Abricotier", "Rue de Laeken", "Rue de l'Amigo", "Rue de l'Angle", "Rue de l'Arbre", "Rue de l'Arbre Bénit", "Rue de l'Arc", "Rue de l'Arrosoir", "Rue de l'Association", "Rue de l'Aurore", "Rue de l'Avant-Port", "Rue de l'Eclipse", "Rue de l'Eclusier Cogge", "Rue de l'Economie", "Rue de l'Ecuelle", "Rue de l'Ecuyer", "Rue De Lenglentier", "Rue de l'Enseignement", "Rue de l'Epargne", "Rue de l'Epée", "Rue de l'Escalier", "Rue de l'Esplanade", "Rue de l'Etendard", "Rue de l'Etuve", "Rue de l'Eventail", "Rue de l'Evêque", "Rue de l'Harmonie", "Rue de l'Hectolitre", "Rue de l'Homme Chrétien", "Rue de l'Hôpital", "Rue de Ligne", "Rue de l'Industrie", "Rue de l'Infante Isabelle", "Rue de l'Infirmerie", "Rue de l'Inquisition", "Rue de Livourne", "Rue de l'Ommegang", "Rue de Louvain", "Rue de Loxum", "Rue de Malines", "Rue de Montserrat", "Rue de Namur", "Rue de Nancy", "Rue de Paris", "Rue De Pascale", "Rue de Passchendaele", "Rue de Pavie", "Rue De Praetere", "Rue de Rivoli", "Rue de Rollebeek", "Rue de Ruysbroeck", "Rue de Schaerbeek", "Rue de Soignies", "Rue de Spa", "Rue de Tabora", "Rue de Toulouse", "Rue de Tournai", "Rue de Trèves", "Rue de Verviers", "Rue de Villers", "Rue de Witte de Haelen", "Rue de Woeringen", "Rue de Wynants", "Rue Defacqz", "Rue d'Egmont", "Rue des Alexiens", "Rue des Arbalétriers", "Rue des Augustins", "Rue des Bogards", "Rue des Boiteux", "Rue des Bouchers", "Rue des Brasseurs", "Rue des Brigittines", "Rue des Brodeurs", "Rue des Capucins", "Rue des Cendres", "Rue des Chaisiers", "Rue des Chandeliers", "Rue des Chanteurs", "Rue des Chapeliers", "Rue des Charpentiers", "Rue des Chartreux", "Rue des Colonies", "Rue des Comédiens", "Rue des Commerçants", "Rue des Confédérés", "Rue des Cultes", "Rue des Denrées", "Rue des Deux Eglises", "Rue des Dominicains", "Rue des Douze Apôtres", "Rue des Eburons", "Rue des Echelles", "Rue des Eperonniers", "Rue des Escrimeurs", "Rue des Fabriques", "Rue des Faisans", "Rue des Fleuristes", "Rue des Foulons", "Rue des Fripiers", "Rue des Grands Carmes", "Rue des Guildes", "Rue des Halles", "Rue des Harengs", "Rue des Hirondelles", "Rue des Jardins Potagers", "Rue des Mécaniciens", "Rue des Ménages", "Rue des Minimes", "Rue des Moineaux", "Rue des Moucherons", "Rue des Navets", "Rue des Oeillets", "Rue des Orfèvres", "Rue des Palais", "Rue des Paroissiens", "Rue des Patriotes", "Rue des Petits Carmes", "Rue des Pierres", "Rue des Pigeons", "Rue des Poissonniers", "Rue des Potiers", "Rue des Prêtres", "Rue des Princes", "Rue des Quatre Bras", "Rue des Quatre Fils Aymon", "Rue des Radis", "Rue des Rameurs", "Rue des Ramoneurs", "Rue des Régates", "Rue des Renards", "Rue des Riches Claires", "Rue des Roses", "Rue des Rosiers", "Rue des Sables", "Rue des Sablons", "Rue des Six Aunes", "Rue des Six Jetons", "Rue des Six Jeunes Hommes", "Rue des Sols", "Rue des Tanneurs", "Rue des Teinturiers", "Rue des Tonneliers", "Rue des Ursulines", "Rue des Vanniers", "Rue des Vierges", "Rue des Visitandines", "Rue Destouvelles", "Rue d'Ophem", "Rue du Bailli", "Rue du Baudet", "Rue du Beau Site", "Rue du Beffroi", "Rue du Béguinage", "Rue du Berceau", "Rue du Bois Sauvage", "Rue du Boulet", "Rue du Buisson", "Rue du Canal", "Rue du Canon", "Rue du Cardinal", "Rue du Cardinal Mercier", "Rue du Carrousel", "Rue du Champ de Mars", "Rue du Chantier", "Rue du Char", "Rue du Chasseur", "Rue du Châtelain", "Rue du Chêne", "Rue du Chevreuil", "Rue du Chien Marin", "Rue du Cirque", "Rue du Colombier", "Rue du Commerce", "Rue du Congrès", "Rue du Cyprès", "Rue du Dam", "Rue du Damier", "Rue du Faubourg", "Rue du Faucon", "Rue du Finistère", "Rue du Fossé aux Loups", "Rue du Frontispice", "Rue du Gentilhomme", "Rue du Gouvernement Provisoire", "Rue du Grand Cerf", "Rue du Grand Hospice", "Rue du Grand-Serment", "Rue du Houblon", "Rue du Jardin des Olives", "Rue du Jardin Rompu", "Rue du Lac", "Rue du Lavoir", "Rue du Lilas", "Rue du Lombard", "Rue du Luxembourg", "Rue du Maçon", "Rue du Magasin", "Rue du Magistrat", "Rue du Marais", "Rue du Marché au Charbon", "Rue du Marché aux Fromages", "Rue du Marché aux Herbes", "Rue du Marché aux Peaux", "Rue du Marché aux Porcs", "Rue du Marché aux Poulets", "Rue du Marquis", "Rue du Marronnier", "Rue du Marteau", "Rue du Meiboom", "Rue du Midi", "Rue du Miroir", "Rue du Monastère", "Rue du Moniteur", "Rue du Musée", "Rue du Nom de Jésus", "Rue du Nord", "Rue du Noyer", "Rue du Paradis", "Rue du Parlement", "Rue du Pavillon", "Rue du Pays de Liège", "Rue du Pélican", "Rue du Pène", "Rue du Pépin", "Rue du Persil", "Rue du Petit Rempart", "Rue du Peuple", "Rue du Peuplier", "Rue du Poinçon", "Rue du Poivre", "Rue du Pont de la Carpe", "Rue du Pont de l'Avenue", "Rue du Pont Neuf", "Rue du Président", "Rue du Remblai", "Rue du Remorqueur", "Rue du Rempart des Moines", "Rue du Rouleau", "Rue du Rupel", "Rue du Saint-Esprit", "Rue du Taciturne", "Rue du Télégraphe", "Rue du Téléphone", "Rue du Temple", "Rue du Théâtre", "Rue du Tocsin", "Rue du Travail", "Rue du Trône", "Rue du Vautour", "Rue du Vieux Marché aux Grains", "Rue Ducale", "Rue Dumonceau", "Rue d'Une Personne", "Rue Duquesnoy", "Rue Emile Claus", "Rue Ernest Allard", "Rue Evers", "Rue François Joseph Navez", "Rue Franklin", "Rue Frédéric Basse", "Rue Frère-Orban", "Rue Froebel", "Rue Froissart", "Rue Fulton", "Rue Gachard", "Rue Glibert", "Rue Grétry", "Rue Guimard", "Rue Haute", "Rue Héger-Bordet", "Rue Henri Beyaert", "Rue Henri Maus", "Rue Héris", "Rue Herry", "Rue Hobbema", "Rue Jacques de Lalaing", "Rue Jacques Jordaens", "Rue Jenner", "Rue Jenneval", "Rue John Waterloo Wilson", "Rue Jos de Brouchoven", "Rue Joseph Dupont", "Rue Joseph II", "Rue Joseph Plateau", "Rue Joseph Stevens", "Rue Jules Van Praet", "Rue Juste Lipse", "Rue Kindermans", "Rue Lacaille", "Rue Lambermont", "Rue Laurent Vandenhoven", "Rue Le Corrège", "Rue Le Tintoret", "Rue Le Titien", "Rue Lebeau", "Rue Lens", "Rue Léon Lepage", "Rue Léonard de Vinci", "Rue Léopold", "Rue Lesbroussart", "Rue Leys", "Rue Locquenghien", "Rue Luther", "Rue Marcq", "Rue Marie de Bourgogne", "Rue Marie-Thérèse", "Rue Martha", "Rue Masui", "Rue Masui Prolongée", "Rue Melsens", "Rue Mercelis", "Rue Montagne aux Herbes Potagères", "Rue Montagne de la Cour", "Rue Montagne de l'Oratoire", "Rue Montagne de Sion", "Rue Montagne du Parc", "Rue Montoyer", "Rue Murillo", "Rue Neuve", "Rue Newton", "Rue Nicolay", "Rue Notre-Dame de Grâces", "Rue Notre-Dame du Sommeil", "Rue Notre-Seigneur", "Rue Ortélius", "Rue Paul Devaux", "Rue Paul Emile Janson", "Rue Paul Lauters", "Rue Paul Spaak", "Rue Philippe de Champagne", "Rue Philippe le Bon", "Rue Picard", "Rue Pieremans", "Rue Pletinckx", "Rue Ravenstein", "Rue Rembrandt", "Rue Roger van der Weyden", "Rue Rogier", "Rue Rouppe", "Rue Royale", "Rue Saint-André", "Rue Saint-Christophe", "Rue Sainte-Anne", "Rue Sainte-Catherine", "Rue Sainte-Gudule", "Rue Sainte-Thérèse", "Rue Saint-Géry", "Rue Saint-Ghislain", "Rue Saint-Jean", "Rue Saint-Jean Népomucène", "Rue Saint-Laurent", "Rue Saint-Michel", "Rue Saint-Pierre", "Rue Saint-Quentin", "Rue Saint-Roch", "Rue Sallaert", "Rue Simons", "Rue Souveraine", "Rue Stephenson", "Rue Stevin", "Rue Terarken", "Rue Terre-Neuve", "Rue Thérésienne", "Rue Van Artevelde", "Rue Van Campenhout", "Rue Van Eyck", "Rue Van Gaver", "Rue Van Helmont", "Rue Van Maerlant", "Rue Van Moer", "Rue Van Orley", "Rue Van Ostade", "Rue Vandenbranden", "Rue Vander Elst", "Rue Vanderhaegen", "Rue Vandermeulen", "Rue Vautier", "Rue Véronèse", "Rue Vesale", "Rue Vieille de la Bergère", "Rue Vilain XIIII", "Rue Villa Hermosa", "Rue Wappers", "Rue Washington", "Rue Watteeu", "Rue Wiertz", "Rue Willem De Mol", "Rue Willems", "Rue Yvonne Jospa", "Rue Zinner"]
streets_1040 = ["Avenue Albert-Elisabeth", "Avenue Alexandre Galopin", "Avenue Boileau", "Avenue Camille Joset", "Avenue Commandant Lothaire", "Avenue d'Auderghem", "Avenue de Cortenbergh", "Avenue de la Cavalerie", "Avenue de la Chasse", "Avenue de la Chevalerie", "Avenue de la Force Aérienne", "Avenue de la Joyeuse Entrée", "Avenue de l'Armée", "Avenue de l'Yser", "Avenue de Tervueren", "Avenue des Casernes", "Avenue des Celtes", "Avenue des Champs", "Avenue des Gaulois", "Avenue des Nerviens", "Avenue des Volontaires", "Avenue du 2e Régiment de Lanciers", "Avenue du Front", "Avenue du Maelbeek", "Avenue du Onze Novembre", "Avenue du Préau", "Avenue Edmond Mesens", "Avenue Edouard de Thibault", "Avenue Edouard Lacomblé", "Avenue Eudore Pirmez", "Avenue Eugène Godaux", "Avenue Général Bernheim", "Avenue Hansen-Soulie", "Avenue Henri Dietrich", "Avenue Joseph Vandersmissen", "Avenue Jules Malou", "Avenue Le Marinel", "Avenue Nestor Plissart", "Avenue Nouvelle", "Avenue René Piret", "Avenue Victor Jacobs", "Rue Abbé Cuypers", "Rue Albert Meurice", "Rue Alex Marcette", "Rue Antoine Gautier", "Rue Aviateur Thieffry", "Rue Baron de Castro", "Rue Baron Dhanis", "Rue Baron Lambert", "Rue Bâtonnier Braffort", "Rue Beckers", "Rue Belliard", "Rue Breydel", "Rue Bruylants", "Rue Camille Coquilhat", "Rue Capitaine Joubert", "Rue Cardinal Lavigerie", "Rue Champ du Roi", "Rue Charles De Buck", "Rue Charles Degroux", "Rue Charles Legrelle", "Rue Colonel Van Gele", "Rue Commandant Ponthier", "Rue d'Arlon", "Rue de Chambéry", "Rue de Gerlache", "Rue de Gravelines", "Rue de Haerne", "Rue de l'Industrie", "Rue de la Confiance", "Rue de la Duchesse", "Rue de la Gare", "Rue de la Grande Haie", "Rue de la Jonchaie", "Rue de la Loi", "Rue de la Science", "Rue de la Tourelle", "Rue de l'Egalité", "Rue de l'Escadron", "Rue de l'Etang", "Rue de Linthout", "Rue de l'Orient", "Rue de l'Orme", "Rue De Mot", "Rue de Pascale", "Rue de Pervyse", "Rue de Ramskapelle", "Rue de Tervaete", "Rue de Theux", "Rue de Toulouse", "Rue de Trèves", "Rue Dekens", "Rue des Aduatiques", "Rue des Atrébates", "Rue des Bataves", "Rue des Boers", "Rue des Bollandistes", "Rue des Champs", "Rue des Coquelicots", "Rue des Cultivateurs", "Rue des Erables", "Rue des Francs", "Rue des Ménapiens", "Rue des Métaux", "Rue des Moissonneurs", "Rue des Morins", "Rue des Perdrix", "Rue des Pères Blancs", "Rue des Platanes", "Rue des Sicambres", "Rue des Taxandres", "Rue des Tilleuls", "Rue des Tongres", "Rue des Trévires", "Rue d'Oultremont", "Rue Doyen Boone", "Rue Dr. Dryepondt", "Rue du Brochet", "Rue du Clocher", "Rue du Cornet", "Rue du Grand Duc", "Rue du Noyer", "Rue du Reigersvliet", "Rue du Ruanda", "Rue du Sceptre", "Rue du Vindictive", "Rue Ernest Havaux", "Rue Félix Hap", "Rue Félix Terlinden", "Rue Fétis", "Rue Fort de Boncelles", "Rue Froissart", "Rue Général Capiaumont", "Rue Général Fivé", "Rue Général Henry", "Rue Général Leman", "Rue Général Molitor", "Rue Général Tombeur", "Rue Général Wangermée", "Rue Gérard", "Rue Gray", "Rue Guimard", "Rue Henri de Braeckeleer", "Rue Jacques de Lalaing", "Rue Jean Massart", "Rue Jonniaux", "Rue Joseph Buedts", "Rue Léon de Lantsheere", "Rue Léon Defosset", "Rue Léon Scampart", "Rue Lieut. Jérôme Becker", "Rue Lieutenant Lippens", "Rue Louis Hap", "Rue Louis Titz", "Rue Major Pétillon", "Rue Mont du Chêne", "Rue Nothomb", "Rue Paul Segers", "Rue Père de Deken", "Rue Père Eudore Devroye", "Rue Peter Benoit", "Rue Philippe Baucq", "Rue Pierre Hap Lemaître", "Rue Posschier", "Rue Richard Kips", "Rue Sainte-Gertrude", "Rue Sneessens", "Rue Van Maerlant"]
streets_1050 = ["Avenue Adolphe Buyl", "Avenue Air Marshal Coningham", "Avenue Antoine Depage", "Avenue Armand Huysmans", "Avenue Arnaud Fraiteur", "Avenue Auguste Rodin", "Avenue Brillat-Savarin", "Avenue Brugmann", "Avenue de la Couronne", "Avenue de la Folle Chanson", "Avenue de la Forêt", "Avenue de la Toison d'Or", "Avenue de l'Hippodrome", "Avenue de l'Orée", "Avenue de l'Université", "Avenue des Abeilles", "Avenue des Cèpes", "Avenue des Courses", "Avenue des Eperons d'Or", "Avenue des Grenadiers", "Avenue des Klauwaerts", "Avenue des Phalènes", "Avenue des Saisons", "Avenue des Scarabées", "Avenue d'Italie", "Avenue du Bois de la Cambre", "Avenue du Brésil", "Avenue du Chili", "Avenue du Congo", "Avenue du Derby", "Avenue du Général de Gaulle", "Avenue du Haut-Pont", "Avenue du Maelbeek", "Avenue du Pesage", "Avenue du Vénézuéla", "Avenue Emile de Beco", "Avenue Emile Duray", "Avenue Ernestine", "Avenue Franklin Roosevelt", "Avenue Général Dossin de St. Georges", "Avenue Général Médecin Derache", "Avenue Géo Bernier", "Avenue George Bergmann", "Avenue Guillaume Gilbert", "Avenue Guillaume Macau", "Avenue Hergé", "Avenue Jeanne", "Avenue Legrand", "Avenue Louis Lepoutre", "Avenue Louise", "Avenue Marguerite Yourcenar", "Avenue Marnix", "Avenue Maurice", "Avenue Moerbiebomen", "Avenue Molière", "Avenue Pierre Curie", "Rue Adolphe Mathieu", "Rue Africaine", "Rue Akarova", "Rue Alfred Giron", "Rue Alphonse De Witte", "Rue Alphonse Hottat", "Rue Alphonse Renard", "Rue Américaine", "Rue Anoul", "Rue Antoine Labarre", "Rue Armand Campenhout", "Rue Augustin Delporte", "Rue Berkendael", "Rue Blanche", "Rue Borrens", "Rue Bouré", "Rue Buchholtz", "Rue Camille Lemonnier", "Rue Cans", "Rue Capitaine Crespel", "Rue Caroly", "Rue César Franck", "Rue Charles Decoster", "Rue Clémentine", "Rue d'Alsace-Lorraine", "Rue d'Arlon", "Rue Darwin", "Rue Dautzenberg", "Rue de Belle-Vue", "Rue de Dublin", "Rue de Fleurus", "Rue de Florence", "Rue de Hennin", "Rue de la Brasserie", "Rue de la Cité", "Rue de la Concorde", "Rue de la Crêche", "Rue de la Croix", "Rue de la Cuve", "Rue de la Digue", "Rue de la Grosse Tour", "Rue de la Levure", "Rue de la Longue Haie", "Rue de la Natation", "Rue de la Paix", "Rue de la Probité", "Rue de la Réforme", "Rue de la Treille", "Rue de la Tulipe", "Rue de la Vallée", "Rue de la Vanne", "Rue de l'Abbaye", "Rue de l'Amazone", "Rue de l'Aqueduc", "Rue de l'Arbre Bénit", "Rue de l'Athénée", "Rue de l'Aurore", "Rue de l'Automne", "Rue de l'Ermitage", "Rue de l'Esplanade", "Rue de l'Eté", "Rue de Livourne", "Rue de Londres", "Rue de l'Ordre", "Rue de Naples", "Rue de Paris", "Rue de Praetere", "Rue de Stassart", "Rue de Tenbosch", "Rue de Theux", "Rue de Trèves", "Rue de Venise", "Rue de Vergnies", "Rue d'Edimbourg", "Rue Defacqz", "Rue des Artisans", "Rue des Brebis", "Rue des Champs Elysées", "Rue des Chevaliers", "Rue des Commères", "Rue des Cygnes", "Rue des Deux Ponts", "Rue des Drapiers", "Rue des Echevins", "Rue des Egyptiens", "Rue des Hellènes", "Rue des Liégeois", "Rue des Mélèzes", "Rue des Mérisiers", "Rue d'Idalie", "Rue Dillens", "Rue du Bailli", "Rue du Belvédère", "Rue du Berger", "Rue du Bourgmestre", "Rue du Brochet", "Rue du Buisson", "Rue du Champ de Mars", "Rue du Château", "Rue du Châtelain", "Rue du Collège", "Rue du Conseil", "Rue du Couloir", "Rue du Couvent", "Rue du Germoir", "Rue du Lac", "Rue du Levant", "Rue du Luxembourg", "Rue du Magistrat", "Rue du Mail", "Rue du Monastère", "Rue du Nid", "Rue du Page", "Rue du Parnasse", "Rue du Président", "Rue du Prévôt", "Rue du Prince Albert", "Rue du Prince Royal", "Rue du Printemps", "Rue du Relais", "Rue du Sceptre", "Rue du Serpentin", "Rue du Tabellion", "Rue du Trône", "Rue du Viaduc", "Rue du Vivier", "Rue Edmond Picard", "Rue Elise", "Rue Emile Banning", "Rue Emile Bouilliot", "Rue Emile Claus", "Rue Emmanuel Van Driessche", "Rue Ernest Solvay", "Rue Eugène Cattoir", "Rue Faider", "Rue Félix Bovie", "Rue Fernand Neuray", "Rue Forestière", "Rue Fourmois", "Rue Francart", "Rue François Dons", "Rue François Roffiaen", "Rue François Stroobant", "Rue Franz Merjay", "Rue Fritz Toussaint", "Rue Gachard", "Rue Général Patton", "Rue Général Thys", "Rue Georges Lorand", "Rue Godecharle", "Rue Goffart", "Rue Gray", "Rue Guillaume Stocq", "Rue Gustave Biot", "Rue Hector Denis", "Rue Henri Marichal", "Rue Isidore Verheyden", "Rue Jean Chapelié", "Rue Jean d'Ardenne", "Rue Jean Paquot", "Rue Jean Stas", "Rue Jean Van Volsem", "Rue Jean Vandeuren", "Rue Jean-Baptiste Colyns", "Rue Jean-Baptiste Meunier", "Rue Jenner", "Rue Joseph Stallaert", "Rue Jules Bouillon", "Rue Jules Cockx", "Rue Jules Lejeune", "Rue Juliette Wytsman", "Rue Kerckx", "Rue Keyenveld", "Rue Kindermans", "Rue Lanfray", "Rue Lannoy", "Rue Lens", "Rue Léon Cuissez", "Rue Léon Jouret", "Rue Léopold Delbove", "Rue Lesbroussart", "Rue Limauge", "Rue Lincoln", "Rue Longue Vie", "Rue Louis Ernotte", "Rue Louis Hymans", "Rue Maes", "Rue Major René Dubreucq", "Rue Malibran", "Rue Marie de Bourgogne", "Rue Marie-Henriette", "Rue Maximilien", "Rue Mercelis", "Rue Mignot Delstanche", "Rue Montoyer", "Rue Paul Emile Janson", "Rue Paul Lauters", "Rue Paul Spaak", "Rue Renier Chalon", "Rue Saint-Boniface", "Rue Saint-Georges", "Rue Sans Souci", "Rue Scarron", "Rue Simonau", "Rue Simonis", "Rue Souveraine", "Rue Stanley", "Rue Van Aa", "Rue Van Elewyck", "Rue Van Eyck", "Rue Vandenbroeck", "Rue Vautier", "Rue Veydt", "Rue Victor Greyson", "Rue Victor Semet", "Rue Vilain XIIII", "Rue Volta", "Rue Washington", "Rue Wayenberg", "Rue Wéry", "Rue Wiertz"]
streets_1180 = ["Avenue Achille Reisdorff", "Avenue Adolphe Dupuich", "Avenue Adolphe Wansart", "Avenue Albert", "Avenue Albert Lancaster", "Avenue Alphonse XIII", "Avenue André Ryckmans", "Avenue Arnold Delvaux", "Avenue Beau-Séjour", "Avenue Bel-Air", "Avenue Blücher", "Avenue Bonaparte", "Avenue Bourgmestre Jean Herinckx", "Avenue Brugmann", "Avenue Brunard", "Avenue Buysdelle", "Avenue Casalta", "Avenue Chantemerle", "Avenue Château de Walzin", "Avenue Circulaire", "Avenue Coghen", "Avenue d'Andrimont", "Avenue de Beersel", "Avenue de Beloeil", "Avenue de Boetendael", "Avenue de Castonier", "Avenue de Floréal", "Avenue de Foestraets", "Avenue De Fré", "Avenue de la Chênaie", "Avenue de la Ferme Rose", "Avenue de la Floride", "Avenue de la Gazelle", "Avenue de la Petite Espinette", "Avenue de la Pinède", "Avenue de la Princesse Paola", "Avenue de la Ramée", "Avenue de la Sapinière", "Avenue de l'Agneau", "Avenue de l'Aiglon", "Avenue de l'Aulne", "Avenue de l'Echevinage", "Avenue de l'Hélianthe", "Avenue de l'Observatoire", "Avenue de Mercure", "Avenue de Messidor", "Avenue de Saturne", "Avenue de Sumatra", "Avenue Den Doorn", "Avenue des Alisiers", "Avenue des Archères", "Avenue des Aubépines", "Avenue des Belettes", "Avenue des Biches", "Avenue des Chalets", "Avenue des Chênes", "Avenue des Cytises", "Avenue des Eglantiers", "Avenue des Faons", "Avenue des Hespérides", "Avenue des Hospices", "Avenue des Mûres", "Avenue des Muses", "Avenue des Myrtilles", "Avenue des Narcisses", "Avenue des Ormeaux", "Avenue des Pâturins", "Avenue des Paysages", "Avenue des Ronces", "Avenue des Sept Bonniers", "Avenue des Sophoras", "Avenue des Sorbiers", "Avenue des Statuaires", "Avenue des Tilleuls", "Avenue d'Homborchveld", "Avenue d'Hougoumont", "Avenue Dolez", "Avenue d'Orbaix", "Avenue d'Overhem", "Avenue Dr. Decroly", "Avenue du Directoire", "Avenue du Feuillage", "Avenue du Fort-Jaco", "Avenue du Furet", "Avenue du Globe", "Avenue du Gui", "Avenue du Hérisson", "Avenue du Hoef", "Avenue du Jonc", "Avenue du Lycée Français", "Avenue du Manoir", "Avenue du Maréchal", "Avenue du Prince de Ligne", "Avenue du Prince d'Orange", "Avenue du Racing", "Avenue du Silence", "Avenue du Val Fleuri", "Avenue du Vert Chasseur", "Avenue du Vieux Cornet", "Avenue du Vivier d'Oie", "Avenue du Vossegat", "Avenue Fond'Roy", "Avenue François Folie", "Avenue Georges Lecointe", "Avenue Groelstveld", "Avenue Guillaume Herinckx", "Avenue Hamoir", "Avenue Hellevelt", "Avenue Henri Elleboudt", "Avenue Henri Pirenne", "Avenue Hippolyte Boulenger", "Avenue Hoche", "Avenue Houzeau", "Avenue Ilya Prigogine", "Avenue Jacques Pastur", "Avenue Jean Burgers", "Avenue Jean et Pierre Carsoel", "Avenue Joseph Divoort", "Avenue Joseph Jongen", "Avenue Juliette", "Avenue Kamerdelle", "Avenue Kersbeek", "Avenue Latérale", "Avenue Legrand", "Avenue Léo Errera", "Avenue Louis Thévenet", "Avenue Maréchal Joffre", "Avenue Maréchal Ney", "Avenue Maxime Van Praag", "Avenue Molière", "Avenue Montana", "Avenue Montjoie", "Avenue Moscicki", "Avenue Mozart", "Avenue Napoléon", "Avenue Nekkersgat", "Avenue Oscar Van Goidtsnoven", "Avenue Paul Stroobant", "Avenue Pierre d'Union", "Avenue Ptolémée", "Avenue Reinaert de Vos", "Avenue René Gobert", "Avenue René Lyr", "Avenue ten Horen", "Avenue Van Bever", "Avenue Vanderaey", "Avenue Victor-Emmanuel III", "Avenue Wellington", "Avenue Winston Churchill", "Avenue Wolvendael", "Rue Alphonse Asselbergs", "Rue Alphonse Renard", "Rue Auguste Danse", "Rue Baron Guillaume Van Hamme", "Rue baron Perelman", "Rue Baron Roger Vander Noot", "Rue Basse", "Rue Beeckman", "Rue Camille Lemonnier", "Rue Camille Van Exter", "Rue Charles Bernaerts", "Rue Colonel Chaltin", "Rue Copernic", "Rue de Boetendael", "Rue De Broyer", "Rue de Calevoet", "Rue de Huldenberg", "Rue de la Bascule", "Rue de la Cueillette", "Rue de la Fauvette", "Rue de la Fourragère", "Rue de la Magnanerie", "Rue de la Mutualité", "Rue de la Pêcherie", "Rue de la Primevère", "Rue de la Seconde Reine", "Rue de l'Anémone", "Rue de l'Antilope", "Rue de l'Arbrisseau", "Rue de l'Equateur", "Rue de l'Etoile", "Rue de Linkebeek", "Rue de l'Yser", "Rue de Nieuwenhove", "Rue de Percke", "Rue De Praetere", "Rue de Stalle", "Rue de Verrewinkel", "Rue de Wansijn", "Rue des Astronomes", "Rue des Balkans", "Rue des Bigarreaux", "Rue des Cabris", "Rue des Carmélites", "Rue des Cottages", "Rue des Fidèles", "Rue des Glaïeuls", "Rue des Griottes", "Rue des Moutons", "Rue des Myosotis", "Rue des Pêcheurs", "Rue des Polders", "Rue des Poussins", "Rue des Trois Arbres", "Rue des Trois Rois", "Rue Dodonée", "Rue Dr.Hubert Clerx", "Rue du Bambou", "Rue du Bourdon", "Rue du Chamois", "Rue du Château d'Eau", "Rue du Château d'Or", "Rue du Coq", "Rue du Doyenné", "Rue du Fossé", "Rue du Framboisier", "Rue du Ham", "Rue du Kriekenput", "Rue du Lama", "Rue du Melkriek", "Rue du Merlo", "Rue du Pacifique", "Rue du Postillon", "Rue du Repos", "Rue du Roetaert", "Rue du Roseau", "Rue du Wagon", "Rue du Wolvenberg", "Rue Edith Cavell", "Rue Edmond Picard", "Rue Edouard Michiels", "Rue Egide Van Ophem", "Rue Emile Claus", "Rue Emile Lecomte", "Rue Emile Regard", "Rue Engeland", "Rue Ernest Gossart", "Rue François Vervloet", "Rue Franz Merjay", "Rue Gabrielle", "Rue Gatti de Gamond", "Rue Geleytsbeek", "Rue Général Lotz", "Rue Général Mac Arthur", "Rue Georges Ugeux", "Rue Groeselenberg", "Rue Henri Van Zuylen", "Rue Jean Ballegeer", "Rue Jean Benaets", "Rue Jean-Baptiste Labarre", "Rue Joseph Bens", "Rue Joseph Cuylits", "Rue Joseph Hazard", "Rue Joseph Stallaert", "Rue Joseph Vanderlinden", "Rue Jules Lejeune", "Rue Keyenbempt", "Rue Kinsendael", "Rue Klipveld", "Rue Langeveld", "Rue Lincoln", "Rue Marianne", "Rue Marie Depage", "Rue Meyerbeer", "Rue Molensteen", "Rue Molenvelt", "Rue Papenkasteel", "Rue Paul Hankar", "Rue Pierre De Puysselaer", "Rue Professeur Hustin", "Rue Rittweger", "Rue Robert Scott", "Rue Roberts-Jones", "Rue Roosendael", "Rue Rouge", "Rue Stanley", "Rue Steenvelt", "Rue Vanderkindere", "Rue Verhulst", "Rue Victor Allard", "Rue Victor Gambier", "Rue Xavier De Bue", "Rue Zandbeek", "Rue Zeecrabbe", "Rue Zwartebeek"]


puts 'Creating awesome categories...'


category_1 = Category.new( {
  name: "To Sit"
})
category_1.save!

category_2 = Category.new( {
  name: "Lights"
})
category_2.save!

category_3 = Category.new( {
  name: "Furniture"
})
category_3.save!

category_4 = Category.new( {
  name: "Art & Decoration"
})
category_4.save!

category_5 = Category.new( {
  name: "Books & Leisure"
})
category_5.save!

category_6 = Category.new( {
  name: "Kids"
})
category_6.save!


puts 'Creating awesome sub-categories...'

## TO SIT

sub_category_1 = SubCategory.new( {
  name: "Armchairs",
  category_id: category_1.id
})
sub_category_1.save!

sub_category_2 = SubCategory.new( {
  name: "Benches",
  category_id: category_1.id
})
sub_category_2.save!

sub_category_3 = SubCategory.new( {
  name: "Chairs",
  category_id: category_1.id
})
sub_category_3.save!

sub_category_4 = SubCategory.new( {
  name: "Desk Chairs",
  category_id: category_1.id
})
sub_category_4.save!

sub_category_5 = SubCategory.new( {
  name: "Sofas",
  category_id: category_1.id
})
sub_category_5.save!

sub_category_6 = SubCategory.new( {
  name: "Others",
  category_id: category_1.id
})
sub_category_6.save!

## In: LIGHTS

sub_category_7 = SubCategory.new( {
  name: "Chandelier",
  category_id: category_2.id
})
sub_category_7.save!

sub_category_8 = SubCategory.new( {
  name: "Floor",
  category_id: category_2.id
})
sub_category_8.save!

sub_category_9 = SubCategory.new( {
  name: "Hanging",
  category_id: category_2.id
})
sub_category_9.save!

sub_category_10 = SubCategory.new( {
  name: "Lampshades",
  category_id: category_2.id
})
sub_category_10.save!

sub_category_11 = SubCategory.new( {
  name: "Reading",
  category_id: category_2.id
})
sub_category_11.save!

sub_category_12 = SubCategory.new( {
  name: "Others",
  category_id: category_2.id
})
sub_category_12.save!

## In: FURNITURE

sub_category_13 = SubCategory.new( {
  name: "Beds",
  category_id: category_3.id
})
sub_category_13.save!

sub_category_14 = SubCategory.new( {
  name: "Desks",
  category_id: category_3.id
})
sub_category_14.save!

sub_category_15 = SubCategory.new( {
  name: "Tables",
  category_id: category_3.id
})
sub_category_15.save!

sub_category_16 = SubCategory.new( {
  name: "Shelves",
  category_id: category_3.id
})
sub_category_16.save!

sub_category_17 = SubCategory.new( {
  name: "Storage",
  category_id: category_3.id
})
sub_category_17.save!

sub_category_18 = SubCategory.new( {
  name: "Wardrobes",
  category_id: category_3.id
})
sub_category_18.save!

sub_category_19 = SubCategory.new( {
  name: "Others",
  category_id: category_3.id
})
sub_category_19.save!

## In: ART & DECORATION

sub_category_20 = SubCategory.new( {
  name: "Accessories",
  category_id: category_4.id
})
sub_category_20.save!

sub_category_21 = SubCategory.new( {
  name: "Carpets",
  category_id: category_4.id
})
sub_category_21.save!

sub_category_22 = SubCategory.new( {
  name: "Mirrors",
  category_id: category_4.id
})
sub_category_22.save!

sub_category_23 = SubCategory.new( {
  name: "Paintings",
  category_id: category_4.id
})
sub_category_23.save!

sub_category_24 = SubCategory.new( {
  name: "Plants",
  category_id: category_4.id
})
sub_category_24.save!

sub_category_25 = SubCategory.new( {
  name: "Others",
  category_id: category_4.id
})
sub_category_25.save!

## In: BOOKS & LEISURE

sub_category_26 = SubCategory.new( {
  name: "Board Games",
  category_id: category_5.id
})
sub_category_26.save!

sub_category_27 = SubCategory.new( {
  name: "Books",
  category_id: category_5.id
})
sub_category_27.save!

sub_category_28 = SubCategory.new( {
  name: "Comics",
  category_id: category_5.id
})
sub_category_28.save!

sub_category_29 = SubCategory.new( {
  name: "Lounge",
  category_id: category_5.id
})
sub_category_29.save!

sub_category_30 = SubCategory.new( {
  name: "Video Games",
  category_id: category_5.id
})
sub_category_30.save!

sub_category_31 = SubCategory.new( {
  name: "Others",
  category_id: category_5.id
})
sub_category_31.save!

## In: KIDS

sub_category_32 = SubCategory.new( {
  name: "Kid Beds",
  category_id: category_6.id
})
sub_category_32.save!

sub_category_33 = SubCategory.new( {
  name: "Kid Books",
  category_id: category_6.id
})
sub_category_33.save!

sub_category_34 = SubCategory.new( {
  name: "Kid Chairs",
  category_id: category_6.id
})
sub_category_34.save!

sub_category_35 = SubCategory.new( {
  name: "Kid Furniture",
  category_id: category_6.id
})
sub_category_35.save!

sub_category_36 = SubCategory.new( {
  name: "Kid Toys",
  category_id: category_6.id
})
sub_category_36.save!

sub_category_37 = SubCategory.new( {
  name: "Others",
  category_id: category_6.id
})
sub_category_37.save!


puts 'Creating awesome products...'

#________________________________________________________

## In: TO SIT



### for: "Armchairs"   ID: 1

product_1 = Product.new( {
  name: "Stylish Armchair",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
armchairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_1.image.attach(io: armchairs_pic_1, filename: 'armchairs_pic_1.jpg', content_type: 'image/jpg')
product_1.save!

product_2 = Product.new( {
  name: "Napoleon Style",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
armchairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_2.image.attach(io: armchairs_pic_2, filename: 'armchairs_pic_2.jpg', content_type: 'image/jpg')
product_2.save!

product_3 = Product.new( {
  name: "Big Fudge",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
armchairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_3.image.attach(io: armchairs_pic_3, filename: 'armchairs_pic_3.jpg', content_type: 'image/jpg')
product_3.save!

product_4 = Product.new( {
  name: "Rocking Chair",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
armchairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_4.image.attach(io: armchairs_pic_4, filename: 'armchairs_pic_4.jpg', content_type: 'image/jpg')
product_4.save!


# ### for: "Benches"   ID: 2

product_5 = Product.new( {
  name: "Outdoor Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
benches_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_5.image.attach(io: benches_pic_1, filename: 'benches_pic_1.jpg', content_type: 'image/jpg')
product_5.save!

product_6 = Product.new( {
  name: "Kitchen Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
benches_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_6.image.attach(io: benches_pic_2, filename: 'benches_pic_2.jpg', content_type: 'image/jpg')
product_6.save!

product_7 = Product.new( {
  name: "Entry Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
benches_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_7.image.attach(io: benches_pic_3, filename: 'benches_pic_3.jpg', content_type: 'image/jpg')
product_7.save!

product_8 = Product.new( {
  name: "Bench with Storage",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
benches_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_8.image.attach(io: benches_pic_4, filename: 'benches_pic_4.jpg', content_type: 'image/jpg')
product_8.save!


# ### for: "Chairs"   ID: 3

product_9 = Product.new( {
  name: "Kitchen Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_9.image.attach(io: chairs_pic_1, filename: 'chairs_pic_1.jpg', content_type: 'image/jpg')
product_9.save!

product_10 = Product.new( {
  name: "Wooden Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_10.image.attach(io: chairs_pic_2, filename: 'chairs_pic_2.jpg', content_type: 'image/jpg')
product_10.save!

product_11 = Product.new( {
  name: "Metal Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_11.image.attach(io: chairs_pic_3, filename: 'chairs_pic_3.jpg', content_type: 'image/jpg')
product_11.save!

product_12 = Product.new( {
  name: "Plastic Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_12.image.attach(io: chairs_pic_4, filename: 'chairs_pic_4.jpg', content_type: 'image/jpg')
product_12.save!


# ### for: "Desk Chairs"  ID: 4

product_13 = Product.new( {
  name: "Black Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
desk_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_13.image.attach(io: desk_chairs_pic_1, filename: 'desk_chairs_pic_1.jpg', content_type: 'image/jpg')
product_13.save!

product_14 = Product.new( {
  name: "White Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
desk_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_14.image.attach(io: desk_chairs_pic_2, filename: 'desk_chairs_pic_2.jpg', content_type: 'image/jpg')
product_14.save!

product_15 = Product.new( {
  name: "Blue Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
desk_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_15.image.attach(io: desk_chairs_pic_3, filename: 'desk_chairs_pic_3.jpg', content_type: 'image/jpg')
product_15.save!

product_16 = Product.new( {
  name: "Classic Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
desk_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_16.image.attach(io: desk_chairs_pic_4, filename: 'desk_chairs_pic_4.jpg', content_type: 'image/jpg')
product_16.save!


# ### for: "Sofas"  ID: 5

product_17 = Product.new( {
  name: "Red Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
sofas_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_17.image.attach(io: sofas_pic_1, filename: 'sofas_pic_1.jpg', content_type: 'image/jpg')
product_17.save!

product_18 = Product.new( {
  name: "Sofa 2 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
sofas_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_18.image.attach(io: sofas_pic_2, filename: 'sofas_pic_2.jpg', content_type: 'image/jpg')
product_18.save!

product_19 = Product.new( {
  name: "Sofa 3 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
sofas_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_19.image.attach(io: sofas_pic_3, filename: 'sofas_pic_3.jpg', content_type: 'image/jpg')
product_19.save!

product_20 = Product.new( {
  name: "Antique Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
sofas_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_20.image.attach(io: sofas_pic_4, filename: 'sofas_pic_4.jpg', content_type: 'image/jpg')
product_20.save!


# ### for: "Others"  ID: 6

product_21 = Product.new( {
  name: "Kitchen Stools",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
other_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_21.image.attach(io: other_chairs_pic_1, filename: 'other_chairs_pic_1.jpg', content_type: 'image/jpg')
product_21.save!

product_22 = Product.new( {
  name: "Red Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
other_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_22.image.attach(io: other_chairs_pic_2, filename: 'other_chairs_pic_2.jpg', content_type: 'image/jpg')
product_22.save!

product_23 = Product.new( {
  name: "3 Garden Transat",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
other_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_23.image.attach(io: other_chairs_pic_3, filename: 'other_chairs_pic_3.jpg', content_type: 'image/jpg')
product_23.save!

product_24 = Product.new( {
  name: "Big Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
other_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_24.image.attach(io: other_chairs_pic_4, filename: 'other_chairs_pic_4.jpg', content_type: 'image/jpg')
product_24.save!

# #________________________________________________________

# ## In: LIGHTS


### for: "Chandelier"  ID: 7

product_25 = Product.new( {
  name: "Small Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
chandeliers_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_25.image.attach(io: chandeliers_pic_1, filename: 'chandeliers_pic_1.jpg', content_type: 'image/jpg')
product_25.save!

product_26 = Product.new( {
  name: "Big Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
chandeliers_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_26.image.attach(io: chandeliers_pic_2, filename: 'chandeliers_pic_2.jpg', content_type: 'image/jpg')
product_26.save!

product_27 = Product.new( {
  name: "Red Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
chandeliers_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_27.image.attach(io: chandeliers_pic_3, filename: 'chandeliers_pic_3.jpg', content_type: 'image/jpg')
product_27.save!

product_28 = Product.new( {
  name: "Golden Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
chandeliers_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_28.image.attach(io: chandeliers_pic_4, filename: 'chandeliers_pic_4.jpg', content_type: 'image/jpg')
product_28.save!


# ### for: "Floor Lamps"  ID: 8

product_29 = Product.new( {
  name: "Black Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
floor_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_29.image.attach(io: floor_lamps_pic_1, filename: 'floor_lamps_pic_1.jpg', content_type: 'image/jpg')
product_29.save!

product_30 = Product.new( {
  name: "Set of two Metallic Lamps",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
floor_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_30.image.attach(io: floor_lamps_pic_2, filename: 'floor_lamps_pic_2.jpg', content_type: 'image/jpg')
product_30.save!

product_31 = Product.new( {
  name: "Red Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
floor_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_31.image.attach(io: floor_lamps_pic_3, filename: 'floor_lamps_pic_3.jpg', content_type: 'image/jpg')
product_31.save!

product_32 = Product.new( {
  name: "Brown Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
floor_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_32.image.attach(io: floor_lamps_pic_4, filename: 'floor_lamps_pic_4.jpg', content_type: 'image/jpg')
product_32.save!


# ### for: "Hanging Lamps"  ID: 9

product_33 = Product.new( {
  name: "Red Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
hangin_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_33.image.attach(io: hangin_lamps_pic_1, filename: 'hangin_lamps_pic_1.jpg', content_type: 'image/jpg')
product_33.save!

product_34 = Product.new( {
  name: "Black Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
hangin_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_34.image.attach(io: hangin_lamps_pic_2, filename: 'hangin_lamps_pic_2.jpg', content_type: 'image/jpg')
product_34.save!

product_35 = Product.new( {
  name: "Green Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
hangin_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_35.image.attach(io: hangin_lamps_pic_3, filename: 'hangin_lamps_pic_3.jpg', content_type: 'image/jpg')
product_35.save!

product_36 = Product.new( {
  name: "Old Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
hangin_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_36.image.attach(io: hangin_lamps_pic_4, filename: 'hangin_lamps_pic_4.jpg', content_type: 'image/jpg')
product_36.save!


puts "... 1/4 of the products have been created ..."


# ### for: "Lampshades"  ID: 10

product_37 = Product.new( {
  name: "Yellow Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
lampshades_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_37.image.attach(io: lampshades_pic_1, filename: 'lampshades_pic_1.jpg', content_type: 'image/jpg')
product_37.save!

product_38 = Product.new( {
  name: "Old Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
lampshades_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_38.image.attach(io: lampshades_pic_2, filename: 'lampshades_pic_2.jpg', content_type: 'image/jpg')
product_38.save!

product_39 = Product.new( {
  name: "Modern Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
lampshades_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_39.image.attach(io: lampshades_pic_3, filename: 'lampshades_pic_3.jpg', content_type: 'image/jpg')
product_39.save!

product_40 = Product.new( {
  name: "Artistic Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
lampshades_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_40.image.attach(io: lampshades_pic_4, filename: 'lampshades_pic_4.jpg', content_type: 'image/jpg')
product_40.save!


# ### for: "Reading Lamps"  ID: 11

product_41 = Product.new( {
  name: "Bedside Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
reading_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_41.image.attach(io: reading_lamps_pic_1, filename: 'reading_lamps_pic_1.jpg', content_type: 'image/jpg')
product_41.save!

product_42 = Product.new( {
  name: "Table Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
reading_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_42.image.attach(io: reading_lamps_pic_2, filename: 'reading_lamps_pic_2.jpg', content_type: 'image/jpg')
product_42.save!

product_43 = Product.new( {
  name: "Reading Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
reading_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_43.image.attach(io: reading_lamps_pic_3, filename: 'reading_lamps_pic_3.jpg', content_type: 'image/jpg')
product_43.save!

product_44 = Product.new( {
  name: "Small Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
reading_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_44.image.attach(io: reading_lamps_pic_4, filename: 'reading_lamps_pic_4.jpg', content_type: 'image/jpg')
product_44.save!


# ### for: "Others"  ID: 12

product_45 = Product.new( {
  name: "Big Candles",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
candles_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_45.image.attach(io: candles_pic_1, filename: 'candles_pic_1.jpg', content_type: 'image/jpg')
product_45.save!

product_46 = Product.new( {
  name: "Small Candles",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
candles_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_46.image.attach(io: candles_pic_2, filename: 'candles_pic_2.jpg', content_type: 'image/jpg')
product_46.save!

product_47 = Product.new( {
  name: "Outdoor Lamps",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
candles_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_47.image.attach(io: candles_pic_3, filename: 'candles_pic_3.jpg', content_type: 'image/jpg')
product_47.save!

product_48 = Product.new( {
  name: "Outdoor Green Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
candles_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_48.image.attach(io: candles_pic_4, filename: 'candles_pic_4.jpg', content_type: 'image/jpg')
product_48.save!

# #________________________________________________________

# ## In: FURNITURE


# ### for: "Beds"  ID: 13

product_49 = Product.new( {
  name: "Bed 2 places",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
beds_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_49.image.attach(io: beds_pic_1, filename: 'beds_pic_1.jpg', content_type: 'image/jpg')
product_49.save!

product_50 = Product.new( {
  name: "Queen-size Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
beds_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_50.image.attach(io: beds_pic_2, filename: 'beds_pic_2.jpg', content_type: 'image/jpg')
product_50.save!

product_51 = Product.new( {
  name: "King-size Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
beds_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_51.image.attach(io: beds_pic_3, filename: 'beds_pic_3.jpg', content_type: 'image/jpg')
product_51.save!

product_52 = Product.new( {
  name: "Single Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
beds_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_52.image.attach(io: beds_pic_4, filename: 'beds_pic_4.jpg', content_type: 'image/jpg')
product_52.save!


# ### for: "Desks"  ID: 14

product_53 = Product.new( {
  name: "Red Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
desks_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_53.image.attach(io: desks_pic_1, filename: 'desks_pic_1.jpg', content_type: 'image/jpg')
product_53.save!

product_54 = Product.new( {
  name: "Small Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
desks_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_54.image.attach(io: desks_pic_2, filename: 'desks_pic_2.jpg', content_type: 'image/jpg')
product_54.save!

product_55 = Product.new( {
  name: "Big Old Black Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
desks_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_55.image.attach(io: desks_pic_3, filename: 'desks_pic_3.jpg', content_type: 'image/jpg')
product_55.save!

product_56 = Product.new( {
  name: "Basic Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
desks_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_56.image.attach(io: desks_pic_4, filename: 'desks_pic_4.jpg', content_type: 'image/jpg')
product_56.save!


# ### for: "Tables"  ID: 15

product_57 = Product.new( {
  name: "6 Places Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
tables_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_57.image.attach(io: tables_pic_1, filename: 'tables_pic_1.jpg', content_type: 'image/jpg')
product_57.save!

product_58 = Product.new( {
  name: "12 Places Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
tables_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_58.image.attach(io: tables_pic_2, filename: 'tables_pic_2.jpg', content_type: 'image/jpg')
product_58.save!

product_59 = Product.new( {
  name: "Wooden Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
tables_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_59.image.attach(io: tables_pic_3, filename: 'tables_pic_3.jpg', content_type: 'image/jpg')
product_59.save!

product_60 = Product.new( {
  name: "Black Metallic Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
tables_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_60.image.attach(io: tables_pic_4, filename: 'tables_pic_4.jpg', content_type: 'image/jpg')
product_60.save!


# ### for: "Shelves"  ID: 16

product_61 = Product.new( {
  name: "Wooden Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
shelves_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_61.image.attach(io: shelves_pic_1, filename: 'shelves_pic_1.jpg', content_type: 'image/jpg')
product_61.save!

product_62 = Product.new( {
  name: "Metallic Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
shelves_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_62.image.attach(io: shelves_pic_2, filename: 'shelves_pic_2.jpg', content_type: 'image/jpg')
product_62.save!

product_63 = Product.new( {
  name: "Modern Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
shelves_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_63.image.attach(io: shelves_pic_3, filename: 'shelves_pic_3.jpg', content_type: 'image/jpg')
product_63.save!

product_64 = Product.new( {
  name: "Labyrinth Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
shelves_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_64.image.attach(io: shelves_pic_4, filename: 'shelves_pic_4.jpg', content_type: 'image/jpg')
product_64.save!


# ### for: "Storage"  ID: 17

product_65 = Product.new( {
  name: "Big Wooden Library",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
storages_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_65.image.attach(io: storages_pic_1, filename: 'storages_pic_1.jpg', content_type: 'image/jpg')
product_65.save!

product_66 = Product.new( {
  name: "Cupboard",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
storages_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_66.image.attach(io: storages_pic_2, filename: 'storages_pic_2.jpg', content_type: 'image/jpg')
product_66.save!

product_67 = Product.new( {
  name: "Antique Cupboard",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
storages_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_67.image.attach(io: storages_pic_3, filename: 'storages_pic_3.jpg', content_type: 'image/jpg')
product_67.save!

product_68 = Product.new( {
  name: "Library",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
storages_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_68.image.attach(io: storages_pic_4, filename: 'storages_pic_4.jpg', content_type: 'image/jpg')
product_68.save!


# ### for: "Wardrobes"  ID: 18

product_69 = Product.new( {
  name: "Bedroom Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
wardrobes_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_69.image.attach(io: wardrobes_pic_1, filename: 'wardrobes_pic_1.jpg', content_type: 'image/jpg')
product_69.save!

product_70 = Product.new( {
  name: "Big Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
wardrobes_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_70.image.attach(io: wardrobes_pic_2, filename: 'wardrobes_pic_2.jpg', content_type: 'image/jpg')
product_70.save!

product_71 = Product.new( {
  name: "Small Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
wardrobes_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_71.image.attach(io: wardrobes_pic_3, filename: 'wardrobes_pic_3.jpg', content_type: 'image/jpg')
product_71.save!

product_72 = Product.new( {
  name: "Old Dusty Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
wardrobes_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_72.image.attach(io: wardrobes_pic_4, filename: 'wardrobes_pic_4.jpg', content_type: 'image/jpg')
product_72.save!


# ### for: "Others"  ID: 19

product_73 = Product.new( {
  name: "Wooden Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
storage_boxes_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_73.image.attach(io: storage_boxes_pic_1, filename: 'storage_boxes_pic_1.jpg', content_type: 'image/jpg')
product_73.save!

product_74 = Product.new( {
  name: "Metallic Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
storage_boxes_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_74.image.attach(io: storage_boxes_pic_2, filename: 'storage_boxes_pic_2.jpg', content_type: 'image/jpg')
product_74.save!

product_75 = Product.new( {
  name: "Garden Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
storage_boxes_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_75.image.attach(io: storage_boxes_pic_3, filename: 'storage_boxes_pic_3.jpg', content_type: 'image/jpg')
product_75.save!

product_76 = Product.new( {
  name: "Outdoor Table",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
storage_boxes_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_76.image.attach(io: storage_boxes_pic_4, filename: 'storage_boxes_pic_4.jpg', content_type: 'image/jpg')
product_76.save!

puts "... 1/2 of the products have been created ..."

# #________________________________________________________

# ## In: ART & DECORATION


# ### for: "Accessories"  ID: 20

product_77 = Product.new( {
  name: "Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
accessories_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_77.image.attach(io: accessories_pic_1, filename: 'accessories_pic_1.jpg', content_type: 'image/jpg')
product_77.save!

product_78 = Product.new( {
  name: "Nice Small Box",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
accessories_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_78.image.attach(io: accessories_pic_2, filename: 'accessories_pic_2.jpg', content_type: 'image/jpg')
product_78.save!

product_79 = Product.new( {
  name: "Antique Plates",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
accessories_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_79.image.attach(io: accessories_pic_3, filename: 'accessories_pic_3.jpg', content_type: 'image/jpg')
product_79.save!

product_80 = Product.new( {
  name: "Presse Papier",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
accessories_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_80.image.attach(io: accessories_pic_4, filename: 'accessories_pic_4.jpg', content_type: 'image/jpg')
product_80.save!


# ### for: "Carpets"  ID: 21

product_81 = Product.new( {
  name: "Indian Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
carpets_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_81.image.attach(io: carpets_pic_1, filename: 'carpets_pic_1.jpg', content_type: 'image/jpg')
product_81.save!

product_82 = Product.new( {
  name: "Italian Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
carpets_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_82.image.attach(io: carpets_pic_2, filename: 'carpets_pic_2.jpg', content_type: 'image/jpg')
product_82.save!

product_83 = Product.new( {
  name: "Red and Green Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
carpets_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_83.image.attach(io: carpets_pic_3, filename: 'carpets_pic_3.jpg', content_type: 'image/jpg')
product_83.save!

product_84 = Product.new( {
  name: "Black and White Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
carpets_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_84.image.attach(io: carpets_pic_4, filename: 'carpets_pic_4.jpg', content_type: 'image/jpg')
product_84.save!


# ### for: "Mirrors"  ID: 22

product_85 = Product.new( {
  name: "Antique Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
mirrors_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_85.image.attach(io: mirrors_pic_1, filename: 'mirrors_pic_1.jpg', content_type: 'image/jpg')
product_85.save!

product_86 = Product.new( {
  name: "Modern Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
mirrors_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_86.image.attach(io: mirrors_pic_2, filename: 'mirrors_pic_2.jpg', content_type: 'image/jpg')
product_86.save!

product_87 = Product.new( {
  name: "Wooden Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
mirrors_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_87.image.attach(io: mirrors_pic_3, filename: 'mirrors_pic_3.jpg', content_type: 'image/jpg')
product_87.save!

product_88 = Product.new( {
  name: "Plain Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
mirrors_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_88.image.attach(io: mirrors_pic_4, filename: 'mirrors_pic_4.jpg', content_type: 'image/jpg')
product_88.save!


# ### for: "Paintings"  ID: 23

product_89 = Product.new( {
  name: "Picasso",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
paintings_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_89.image.attach(io: paintings_pic_1, filename: 'paintings_pic_1.jpg', content_type: 'image/jpg')
product_89.save!

product_90 = Product.new( {
  name: "Francis Picabia",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
paintings_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_90.image.attach(io: paintings_pic_2, filename: 'paintings_pic_2.jpg', content_type: 'image/jpg')
product_90.save!

product_91 = Product.new( {
  name: "Turner",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
paintings_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_91.image.attach(io: paintings_pic_3, filename: 'paintings_pic_3.jpg', content_type: 'image/jpg')
product_91.save!

product_92 = Product.new( {
  name: "Kandinsky",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
paintings_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_92.image.attach(io: paintings_pic_4, filename: 'paintings_pic_4.jpg', content_type: 'image/jpg')
product_92.save!


# ### for: "Plants"  ID: 24

product_93 = Product.new( {
  name: "Geranium",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
plants_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_93.image.attach(io: plants_pic_1, filename: 'plants_pic_1.jpg', content_type: 'image/jpg')
product_93.save!

product_94 = Product.new( {
  name: "Aloe Vera",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
plants_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_94.image.attach(io: plants_pic_2, filename: 'plants_pic_2.jpg', content_type: 'image/jpg')
product_94.save!

product_95 = Product.new( {
  name: "Joli Vase",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
plants_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_95.image.attach(io: plants_pic_3, filename: 'plants_pic_3.jpg', content_type: 'image/jpg')
product_95.save!

product_96 = Product.new( {
  name: "Cactus",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
plants_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_96.image.attach(io: plants_pic_4, filename: 'plants_pic_4.jpg', content_type: 'image/jpg')
product_96.save!


# ### for: "Others"  ID: 25

product_97 = Product.new( {
  name: "Outdoor Decorations",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
statues_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_97.image.attach(io: statues_pic_1, filename: 'statues_pic_1.jpg', content_type: 'image/jpg')
product_97.save!

product_98 = Product.new( {
  name: "Random Things",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
statues_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_98.image.attach(io: statues_pic_2, filename: 'statues_pic_2.jpg', content_type: 'image/jpg')
product_98.save!

product_99 = Product.new( {
  name: "Other Random Things",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
statues_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_99.image.attach(io: statues_pic_3, filename: 'statues_pic_3.jpg', content_type: 'image/jpg')
product_99.save!

product_100 = Product.new( {
  name: "Nice Frame",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
statues_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_100.image.attach(io: statues_pic_4, filename: 'statues_pic_4.jpg', content_type: 'image/jpg')
product_100.save!

# #________________________________________________________

# ## In: BOOKS & LEISURE


# ### for: "Board Games"  ID: 26

product_101 = Product.new( {
  name: "Monopoly",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
board_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_101.image.attach(io: board_games_pic_1, filename: 'board_games_pic_1.jpg', content_type: 'image/jpg')
product_101.save!

product_102 = Product.new( {
  name: "Hotels",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
board_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_102.image.attach(io: board_games_pic_2, filename: 'board_games_pic_2.jpg', content_type: 'image/jpg')
product_102.save!

product_103 = Product.new( {
  name: "Labyrinth",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
board_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_103.image.attach(io: board_games_pic_3, filename: 'board_games_pic_3.jpg', content_type: 'image/jpg')
product_103.save!

product_104 = Product.new( {
  name: "Cluedo",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
board_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_104.image.attach(io: board_games_pic_4, filename: 'board_games_pic_4.jpg', content_type: 'image/jpg')
product_104.save!


# ### for: "Books"  ID: 27

product_105 = Product.new( {
  name: "Loup Blanc",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
books_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_105.image.attach(io: books_pic_1, filename: 'books_pic_1.jpg', content_type: 'image/jpg')
product_105.save!

product_106 = Product.new( {
  name: "Parmenion",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
books_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_106.image.attach(io: books_pic_2, filename: 'books_pic_2.jpg', content_type: 'image/jpg')
product_106.save!

product_107 = Product.new( {
  name: "Ravage",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
books_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_107.image.attach(io: books_pic_3, filename: 'books_pic_3.jpg', content_type: 'image/jpg')
product_107.save!

product_108 = Product.new( {
  name: "2O mille Lieues sous les Mers",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
books_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_108.image.attach(io: books_pic_4, filename: 'books_pic_4.jpg', content_type: 'image/jpg')
product_108.save!


# ### for: "Comics"  ID: 28

product_109 = Product.new( {
  name: "Tintin",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
comics_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_109.image.attach(io: comics_pic_1, filename: 'comics_pic_1.jpg', content_type: 'image/jpg')
product_109.save!

product_110 = Product.new( {
  name: "Asterix",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
comics_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_110.image.attach(io: comics_pic_2, filename: 'comics_pic_2.jpg', content_type: 'image/jpg')
product_110.save!

product_111 = Product.new( {
  name: "Yoko Tsuno",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
comics_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_111.image.attach(io: comics_pic_3, filename: 'comics_pic_3.jpg', content_type: 'image/jpg')
product_111.save!

product_112 = Product.new( {
  name: "Boule & Bil",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
comics_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_112.image.attach(io: comics_pic_4, filename: 'comics_pic_4.jpg', content_type: 'image/jpg')
product_112.save!


puts "... 3/4 of the products have been created ..."


# ### for: "Lounge Games"  ID: 29

product_113 = Product.new( {
  name: "Darts",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
lounge_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_113.image.attach(io: lounge_games_pic_1, filename: 'lounge_games_pic_1.jpg', content_type: 'image/jpg')
product_113.save!

product_114 = Product.new( {
  name: "Small Pool Table",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
lounge_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_114.image.attach(io: lounge_games_pic_2, filename: 'lounge_games_pic_2.jpg', content_type: 'image/jpg')
product_114.save!

product_115 = Product.new( {
  name: "Chess",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
lounge_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_115.image.attach(io: lounge_games_pic_3, filename: 'lounge_games_pic_3.jpg', content_type: 'image/jpg')
product_115.save!

product_116 = Product.new( {
  name: "Random Games Box",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
lounge_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_116.image.attach(io: lounge_games_pic_4, filename: 'lounge_games_pic_4.jpg', content_type: 'image/jpg')
product_116.save!


# ### for: "Video Games"  ID: 30

product_117 = Product.new( {
  name: "Fifa 21",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
video_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_117.image.attach(io: video_games_pic_1, filename: 'video_games_pic_1.jpg', content_type: 'image/jpg')
product_117.save!

product_118 = Product.new( {
  name: "Fortnite",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
video_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_118.image.attach(io: video_games_pic_2, filename: 'video_games_pic_2.jpg', content_type: 'image/jpg')
product_118.save!

product_119 = Product.new( {
  name: "Assassin's Creed",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
video_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_119.image.attach(io: video_games_pic_3, filename: 'video_games_pic_3.jpg', content_type: 'image/jpg')
product_119.save!

product_120 = Product.new( {
  name: "Fable III",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
video_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_120.image.attach(io: video_games_pic_4, filename: 'video_games_pic_4.jpg', content_type: 'image/jpg')
product_120.save!


# ### for: "Others"  ID: 31

product_121 = Product.new( {
  name: "Some interesting stuffs",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
football_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_121.image.attach(io: football_pic_1, filename: 'football_pic_1.jpg', content_type: 'image/jpg')
product_121.save!

product_122 = Product.new( {
  name: "Card Games",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
football_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_122.image.attach(io: football_pic_2, filename: 'football_pic_2.jpg', content_type: 'image/jpg')
product_122.save!

product_123 = Product.new( {
  name: "Poker Games",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
football_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_123.image.attach(io: football_pic_3, filename: 'football_pic_3.jpg', content_type: 'image/jpg')
product_123.save!

product_124 = Product.new( {
  name: "Adult Costumes",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
football_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_124.image.attach(io: football_pic_4, filename: 'football_pic_4.jpg', content_type: 'image/jpg')
product_124.save!

# #________________________________________________________

# ## In: KIDS

# ### for: "Kid Beds"  ID: 32

product_125 = Product.new( {
  name: "Wooden Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
kid_beds_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_125.image.attach(io: kid_beds_pic_1, filename: 'kid_beds_pic_1.jpg', content_type: 'image/jpg')
product_125.save!

product_126 = Product.new( {
  name: "Red Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
kid_beds_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_126.image.attach(io: kid_beds_pic_2, filename: 'kid_beds_pic_2.jpg', content_type: 'image/jpg')
product_126.save!

product_127 = Product.new( {
  name: "Blue Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
kid_beds_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_127.image.attach(io: kid_beds_pic_3, filename: 'kid_beds_pic_3.jpg', content_type: 'image/jpg')
product_127.save!

product_128 = Product.new( {
  name: "Green Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
kid_beds_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_128.image.attach(io: kid_beds_pic_4, filename: 'kid_beds_pic_4.jpg', content_type: 'image/jpg')
product_128.save!


# ### for: "Kid Books"  ID: 33

product_129 = Product.new( {
  name: "Kid Book 1",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
kid_books_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_129.image.attach(io: kid_books_pic_1, filename: 'kid_books_pic_1.jpg', content_type: 'image/jpg')
product_129.save!

product_130 = Product.new( {
  name: "Les Teletubbies",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
kid_books_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_130.image.attach(io: kid_books_pic_2, filename: 'kid_books_pic_2.jpg', content_type: 'image/jpg')
product_130.save!

product_131 = Product.new( {
  name: "Oui-Oui",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
kid_books_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_131.image.attach(io: kid_books_pic_3, filename: 'kid_books_pic_3.jpg', content_type: 'image/jpg')
product_131.save!

product_132 = Product.new( {
  name: "Snoopy",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
kid_books_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_132.image.attach(io: kid_books_pic_4, filename: 'kid_books_pic_4.jpg', content_type: 'image/jpg')
product_132.save!


# ### for: "Kid Chairs"  ID: 34

product_133 = Product.new( {
  name: "Blue Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
kid_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_133.image.attach(io: kid_chairs_pic_1, filename: 'kid_chairs_pic_1.jpg', content_type: 'image/jpg')
product_133.save!

product_134 = Product.new( {
  name: "Rocking Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
kid_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_134.image.attach(io: kid_chairs_pic_2, filename: 'kid_chairs_pic_2.jpg', content_type: 'image/jpg')
product_134.save!

product_135 = Product.new( {
  name: "Baby Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
kid_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_135.image.attach(io: kid_chairs_pic_3, filename: 'kid_chairs_pic_3.jpg', content_type: 'image/jpg')
product_135.save!

product_136 = Product.new( {
  name: "Red Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
kid_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_136.image.attach(io: kid_chairs_pic_4, filename: 'kid_chairs_pic_4.jpg', content_type: 'image/jpg')
product_136.save!


# ### for: "Kid Furniture"  ID: 35

product_137 = Product.new( {
  name: "Changing Table",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
kid_furnitures_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_137.image.attach(io: kid_furnitures_pic_1, filename: 'kid_furnitures_pic_1.jpg', content_type: 'image/jpg')
product_137.save!

product_138 = Product.new( {
  name: "Blue Changing Table",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
kid_furnitures_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_138.image.attach(io: kid_furnitures_pic_2, filename: 'kid_furnitures_pic_2.jpg', content_type: 'image/jpg')
product_138.save!

product_139 = Product.new( {
  name: "Small Desk",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
kid_furnitures_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_139.image.attach(io: kid_furnitures_pic_3, filename: 'kid_furnitures_pic_3.jpg', content_type: 'image/jpg')
product_139.save!

product_140 = Product.new( {
  name: "Red Kid Desk",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
kid_furnitures_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_140.image.attach(io: kid_furnitures_pic_4, filename: 'kid_furnitures_pic_4.jpg', content_type: 'image/jpg')
product_140.save!


# ### for: "Kid Toys"  ID: 36

product_141 = Product.new( {
  name: "Action Man",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
kid_toys_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_141.image.attach(io: kid_toys_pic_1, filename: 'kid_toys_pic_1.jpg', content_type: 'image/jpg')
product_141.save!

product_142 = Product.new( {
  name: "Barbie",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
kid_toys_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_142.image.attach(io: kid_toys_pic_2, filename: 'kid_toys_pic_2.jpg', content_type: 'image/jpg')
product_142.save!

product_143 = Product.new( {
  name: "Legos",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
kid_toys_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_143.image.attach(io: kid_toys_pic_3, filename: 'kid_toys_pic_3.jpg', content_type: 'image/jpg')
product_143.save!

product_144 = Product.new( {
  name: "Playmobile",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
kid_toys_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_144.image.attach(io: kid_toys_pic_4, filename: 'kid_toys_pic_4.jpg', content_type: 'image/jpg')
product_144.save!


# ### for: "Others"  ID: 37

product_145 = Product.new( {
  name: "Biberons",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1000.sample}, 1000 Bruxelles"
} )
teddy_bears_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_145.image.attach(io: teddy_bears_pic_1, filename: 'teddy_bears_pic_1.jpg', content_type: 'image/jpg')
product_145.save!

product_146 = Product.new( {
  name: "Peluches",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1040.sample}, 1040 Etterbeek"
} )
teddy_bears_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_146.image.attach(io: teddy_bears_pic_2, filename: 'teddy_bears_pic_2.jpg', content_type: 'image/jpg')
product_146.save!

product_147 = Product.new( {
  name: "Kid Clothes",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1050.sample}, 1050 Ixelles"
} )
teddy_bears_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_147.image.attach(io: teddy_bears_pic_3, filename: 'teddy_bears_pic_3.jpg', content_type: 'image/jpg')
product_147.save!

product_148 = Product.new( {
  name: "Tetine",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "#{rand(1..50)} #{streets_1180.sample}, 1180 Uccle"
} )
teddy_bears_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_148.image.attach(io: teddy_bears_pic_4, filename: 'teddy_bears_pic_4.jpg', content_type: 'image/jpg')
product_148.save!


puts " "

puts "DATABASE SUCCESSFULLY SEEDED."

puts " "

puts "Total number of categories: #{Category.all.count}"
puts "Total number of sub-categories: #{SubCategory.all.count}"
puts "Total number of products: #{Product.all.count}"

puts " "

puts "┐(・。・┐) ♪ "

puts " "

puts "( ͡ ͜ ʖ ͡ )"

puts " "

puts "( ͡• ͜ʖ ͡• )"

puts " "

puts "┏(＾0＾)┛┗(＾0＾)┓"

puts " "


# puts "Product names: #{Product.all.pluck("name")}"
# puts "Product1: #{product_1.name} price: #{product_1.price.round(2)}"
# puts "Product2: #{product_2.name} price: #{product_2.price.round(2)}"
# puts "Product3: #{product_3.name} price: #{product_3.price.round(2)}"
# puts "Product4: #{product_4.name} price: #{product_4.price.round(2)}"
# puts "Product5: #{product_5.name} price: #{product_5.price.round(2)}"





