  User.destroy_all
  Skill.destroy_all
  Association.destroy_all

  userTest1 = User.new(
  first_name: "Van",
  last_name: "Wayne",
  username: "VanWayne",
  password: "111111",
  email: "userTestO@gmail.com",
  description: "William John Paul Gallagher, dit Liam Gallagher est un chanteur et musicien anglais d'origine irlandaise, né le 21 septembre 1972 dans la banlieue de Manchester (Angleterre). Il fut le chanteur principal du groupe de rock Oasis, désormais séparé. Figure de proue du mouvement Britpop dans les années 1990, Liam Gallagher est connu pour son style de chant particulier, ainsi que pour son attitude erratique, parfois provocatrice. Il demeure une figure reconnue de la musique moderne britannique.",
  mobile_phone: "06.66.66.66.66",
  birth_year: 1987,
  admin: true
  )
  userTest1.save!

  userTest2 = User.new(
  first_name: "Liam",
  last_name: "Gallagher",
  username: "RKid",
  password: "111111",
  email: "userTest2@gmail.com",
  description: "Le premier album du groupe est sorti début 2011 et s'est classé au 3e rang des ventes au Royaume-Uni. Après avoir sorti plusieurs singles et entamé une tournée marathon partout à travers le globe, il a annoncé un prochain album pour le groupe courant 2012. Il a été nommé Greatest Frontman Of All Time en 2010 par Q Magazine1.",
  mobile_phone: "06.66.66.66.67",
  birth_year: 1972,
  admin: false
  )
  userTest2.save!

  userTest3 = User.new(
  first_name: "Noel",
  last_name: "Gallagher",
  username: "TheChief",
  password: "222222",
  email: "userTest3@gmail.com",
  description: " lead-guitariste et chanteur occasionnel du groupe de rock britannique Oasis qui comprenait aussi son frère cadet Liam Gallagher, chanteur principal. ",
  mobile_phone: "06.66.66.66.68",
  birth_year: 1967,
  admin: false
  )
  userTest3.save!

  userTest4 = User.new(
  first_name: "George",
  last_name: "Harrison",
  username: "Jtm",
  password: "222222",
  email: "userTest4@gmail.com",
  description: "George Harrison, né le 25 février 1943 à Liverpool et mort le 29 novembre 2001 à Los Angeles, est un musicien britannique, auteur-compositeur, guitariste, chanteur et producteur de cinéma. Il était le plus jeune membre des Beatles.",
  mobile_phone: "06.66.66.66.69",
  birth_year: 1943,
  admin: false
  )
  userTest4.save!

  userTest5 = User.new(
  first_name: "John",
  last_name: "Lennon",
  username: "Papa",
  password: "333333",
  email: "userTest5@gmail.com",
  description: "John Winston Ono Lennon, né le 9 octobre 1940 à Liverpool et mort assassiné le 8 décembre 1980 à New York, est un musicien, guitariste, auteur-compositeur, chanteur et écrivain britannique. ",
  mobile_phone: "06.66.66.66.70",
  birth_year: 1940,
  admin: false
  )
  userTest5.save!


  skill_legal = Skill.create!(name: "Juridique")
  skill_it = Skill.create!(name: "Developpement Informatique")
  skill_cooking = Skill.create!(name: "Cuisine")
  skill_medical = Skill.create!(name: "Medical")
  skill_psycho = Skill.create!(name: "Psychologie")
  skill_english = Skill.create!(name: "Anglophone")
  skill_photographer = Skill.create!(name: "Photographie")
  skill_spanish = Skill.create!(name: "Bilingue Espagnol")
  skill_builder = Skill.create!(name: "Maçonnerie")
  skill_teaching = Skill.create!(name: "Professeur.e")


hop_hop_food =  Association.new(
  name: "HopHopFood",
  description: "Réduction du gaspillage alimentaire des particuliers par une plateforme digitale géolocalisée Par cette plateforme, création de solidarité en luttant contre la précarité alimentaire de populations fragiles (étudiants, migrants, etc.)",
  phone_number: "09 53 40 25 79",
  address: "281 Rue du Faubourg Saint-Antoine, 75011 Paris",
  email: "michel.montagu@yahoo.fr",
  status: "approved",
  registration_nb: "9G2S9712008364"
  )
hop_hop_food.save!

agence_innovation_solidaire_et_des_loisirs =  Association.new(
  name: "Agence d'innovation solidaire et des loisirs",
  description: "Groupe de réflexion sur la meilleur façon de répondre aux besoins des ménages les plus démunis dans le domaine économique, l'accès aux différents dispositifs sociaux et culturels, la santé etc...débouchant sur la création de concepts et de produits ou de services ouverts à tous.",
  phone_number: "01 47 56 78 39",
  address: "75019",
  email: "lydia.vergerolle@gmail.com",
  status: "pending",
  registration_nb: "751P00108654"
  )
agence_innovation_solidaire_et_des_loisirs.save!

secours_populaire_31 =  Association.new(
  name: "Secours Populaire 31",
  description: "Né en 1945, le Secours populaire est une association à but non lucratif, reconnue d’utilité publique et déclarée Grande cause nationale. Celle-ci est habilitée à recevoir des dons, des legs et des donations. L’association s'est donnée pour mission d’agir contre la pauvreté et l'exclusion en France et dans le monde et de promouvoir la solidarité et ses valeurs. Elle rassemble des personnes de toutes opinions, conditions et origines qui souhaitent faire vivre la solidarité.",
  phone_number: "05 61 27 84 84",
  address: "6 rue Jean-Marie Arnaud 31320 Castanet Tolosan",
  email: "info@secourspopulaire.fr",
  status: "approved",
  registration_nb: "731S0731005711"
  )
secours_populaire_31.save!

a_livres_ouverts =  Association.new(
  name: "A livres ouverts",
  description: "réunir ses adhérents de manière périodique autour d’activités liées à la lecture et l’écriture et au perfectionnement en langue française",
  phone_number: "04 91 45 39 12",
  address: "DOMAINE DE VALBOIS, BÂTIMENT A1, 72, RUE HENRI TOMASI, 13009  MARSEILLE",
  email: "alolesmots@orange.fr",
  status: "approved",
  registration_nb: "W044001847"
  )
a_livres_ouverts.save!

nid_lyon =  Association.new(
  name: "Mouvement du Nid - Délégation du Rhône",
  description: "Le Mouvement du Nid est une association reconnue d'utilité publique qui agit depuis 70 ans dans le domaine du droit des femmes auprès des personnes prostituées.
  Ses activités sont : la rencontre  des personnes prostituées, leur accompagnement dans une démarche de réinsertion, la formation des acteurs sociaux, la prévention auprès des jeunes la sensibilisation du grand public et le plaidoyer politique afin de faire émerger une société sans prostitution.
  ",
  phone_number: "06 33 40 94 98",
  address: "70 rue Rachais 69007 LYON",
  email: "rhonealpes-69@mouvementdunid.org",
  status: "pending",
  registration_nb: "031S0031003275"
  )
nid_lyon.save!

asso3 =  Association.new(
  name: "Asso3",
  description: "secours aux SDF",
  phone_number: "02 38 49 15 27",
  address: "2 avenue du général Leclerc 44",
  email: "contact@asso3.fr",
  status: "declined",
  registration_nb: "?"
  )
asso3.save!


puts "Seeded 🦇"
