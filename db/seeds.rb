  Mission.destroy_all
  Project.destroy_all
  Charity.destroy_all
  Skill.destroy_all
  User.destroy_all

  # USER PROFILES

  userTest1 = User.new(
  first_name: "Van",
  last_name: "Wayne",
  username: "VanWayne",
  password: "111111",
  email: "userTestO@gmail.com",
  description: "William John Paul Gallagher, dit Liam Gallagher est un chanteur et musicien anglais d'origine irlandaise, ne le 21 septembre 1972 dans la banlieue de Manchester (Angleterre). Il fut le chanteur principal du groupe de rock Oasis, desormais separe. Figure de proue du mouvement Britpop dans les annees 1990, Liam Gallagher est connu pour son style de chant particulier, ainsi que pour son attitude erratique, parfois provocatrice. Il demeure une figure reconnue de la musique moderne britannique.",
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
  description: "Le premier album du groupe est sorti debut 2011 et s'est classe au 3e rang des ventes au Royaume-Uni. Après avoir sorti plusieurs singles et entame une tournee marathon partout à travers le globe, il a annonce un prochain album pour le groupe courant 2012. Il a ete nomme Greatest Frontman Of All Time en 2010 par Q Magazine1.",
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
  description: "George Harrison, ne le 25 fevrier 1943 à Liverpool et mort le 29 novembre 2001 à Los Angeles, est un musicien britannique, auteur-compositeur, guitariste, chanteur et producteur de cinema. Il etait le plus jeune membre des Beatles.",
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
  description: "John Winston Ono Lennon, ne le 9 octobre 1940 à Liverpool et mort assassine le 8 decembre 1980 à New York, est un musicien, guitariste, auteur-compositeur, chanteur et ecrivain britannique. ",
  mobile_phone: "06.66.66.66.70",
  birth_year: 1940,
  admin: false
  )
  userTest5.save!

#SKILLS

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


#CHARITY 1

hop_hop_food =  Charity.new(
  name: "HopHopFood",
  description: "Reduction du gaspillage alimentaire des particuliers par une plateforme digitale geolocalisee Par cette plateforme, creation de solidarite en luttant contre la precarite alimentaire de populations fragiles (etudiants, migrants, etc.)",
  phone_number: "09 53 40 25 79",
  address: "281 Rue du Faubourg Saint-Antoine, 75011 Paris",
  email: "michel.montagu@yahoo.fr",
  status: "approved",
  registration_nb: "9G2S9712008364"
  )
hop_hop_food.save!

# PROJECT 1
garde_manger_solidaire = Project.new(
  name: "Garde-manger solidaire",
  description: "Nous cherchons des benevoles pour être des anges-gardiens de ces GMS, c'estàdire s'engager à passer regulièrement (quelques fois par semaine serait top) pour verifier que tout se passe bien (5 mn). Ce serait pratique que la.e benevole habite ou travaille tout près du GMS.",
  address: "281 Rue du Faubourg Saint-Antoine, 75011 Paris",
  charity: hop_hop_food,
  category: "Collecte & Distribution",
  )
garde_manger_solidaire.remote_photo_url = "https://diabetestimes.co.uk/wp-content/uploads/2015/09/refugee-1024x768.jpg"
garde_manger_solidaire.save!

# MISSIONS of PROJECT 1
journey1 = Mission.new(
  title: "Distribution nourriture",
  start_time: "2019-08-17 09:00:00",
  end_time: "2019-08-18 19:00:00",
  volunteers_count: 4,
  charity: hop_hop_food,
  project: garde_manger_solidaire
  )
journey1.save!

journey2 = Mission.new(
  title: "Preparation repas",
  start_time: "2019-08-17 09:00:00",
  end_time: "2019-08-18 19:00:00",
  volunteers_count: 1,
  charity: hop_hop_food,
  project: garde_manger_solidaire,
  skill:skill_cooking
  )
journey2.save!

journey3 = Mission.new(
  title: "Transport de nourriture",
  start_time: "2019-08-17 09:00:00",
  end_time: "2019-08-18 19:00:00",
  volunteers_count: 5,
  charity: hop_hop_food,
  project: garde_manger_solidaire
  )
journey3.save!

#CHARITY 2
agence_innovation_solidaire =  Charity.new(
  name: "Agence d'innovation solidaire",
  description: "Groupe de reflexion sur la meilleur façon de repondre aux besoins des menages les plus demunis dans le domaine economique, l'accès aux differents dispositifs sociaux et culturels, la sante etc...debouchant sur la creation de concepts et de produits ou de services ouverts à tous.",
  phone_number: "01 47 56 78 39",
  address: "187 Rue de Clignancourt, 75018 Paris",
  email: "lydia.vergerolle@gmail.com",
  status: "pending",
  registration_nb: "751P00108654"
  )
agence_innovation_solidaire.save!

# PROJECT 2
formateur_benevole_alpha = Project.new(
  name: "Formateur benevole alpha/fle",
  description: "A Livres Ouverts recrute des formateurs benevoles ALPHA/FLE pour animer des cours de français (niveau Alpha, debutant et avance) pour des personnes vivant en habitat indigne et pour des personnes refugiees et apporter une petite formation aux nouveaux benevoles. Les cours auront lieu desormais dans notre antenne de Marseille (13)",
  address: "187 Rue de Clignancourt, 75018 Paris",
  charity: agence_innovation_solidaire,
  category: "Langues & éducationn"
  )
formateur_benevole_alpha.remote_photo_url = "https://static1.squarespace.com/static/540f698be4b05f0d2fb47512/59d76d744c326dcba5df2187/59d76d766f4ca3f9b42da1b1/1507290552799/IMG_2050.JPG?format=750w"
formateur_benevole_alpha.save!

# MISSIONS PROJECT 2
formateur_journey = Mission.new(
  title: "Cours de français",
  start_time: "2019-06-14 09:30:00",
  end_time: "2019-06-24 17:30:00",
  volunteers_count: 10,
  charity: agence_innovation_solidaire,
  project: formateur_benevole_alpha,
  skill: skill_teaching
  )
formateur_journey.save!

#CHARITY 3
secours_populaire_31 =  Charity.new(
  name: "Secours Populaire 31",
  description: "Ne en 1945, le Secours populaire est une association à but non lucratif, reconnue d’utilite publique et declaree Grande cause nationale. Celle-ci est habilitee à recevoir des dons, des legs et des donations. L’association s'est donnee pour mission d’agir contre la pauvrete et l'exclusion en France et dans le monde et de promouvoir la solidarite et ses valeurs. Elle rassemble des personnes de toutes opinions, conditions et origines qui souhaitent faire vivre la solidarite.",
  phone_number: "05 61 27 84 84",
  address: "34 Rue Amelot, 75011 Paris",
  email: "info@secourspopulaire.fr",
  status: "approved",
  registration_nb: "731S0731005711"
  )
secours_populaire_31.save!

#PROJECT 3
distribution_flyers_chatbot = Project.new(
  name: "Distribution de flyers",
  description: "Aidez-nous, engagez-vous ! A l'occasion de la sortie officielle de son chatbot à destination des jeunes femmes victimes de violences, l'association Elle Caetera organise une grande distribution de Flyers, à Paris!",
  address: "34 Rue Amelot, 75011 Paris",
  charity: secours_populaire_31,
  category: "Langues & éducation"
  )
distribution_flyers_chatbot.remote_photo_url = "https://www.leflyer.fr/images/devis/lyon_distribution-flyers.jpg"
distribution_flyers_chatbot.save!

#MISSIONS of PROJECT 3
distribution_journey = Mission.new(
  title: "Conducteur",
  start_time: "2019-06-21 09:00:00",
  end_time: "2019-06-21 18:00:00",
  volunteers_count: 1,
  charity: secours_populaire_31,
  project: distribution_flyers_chatbot
  )
distribution_journey.save!

distribution_journey = Mission.new(
  title: "Distribution flyers",
  start_time: "2019-06-21 09:00:00",
  end_time: "2019-06-21 18:00:00",
  volunteers_count: 15,
  charity: secours_populaire_31,
  project: distribution_flyers_chatbot
  )
distribution_journey.save!


#CHARITY 4
la_reserve_des_arts =  Charity.new(
  name: "LaReservedesArts",
  description: "La Réserve des arts est une association qui récupère des rebuts et chutes de matériaux dans les entreprises, les valorise et les revend aux professionnel·le·s de la création.
  La Réserve des arts répond à une triple mission : réduire durablement les déchets, soutenir le secteur culturel et promouvoir le réemploi.
  L’écologie est une révolution culturelle. Devenez, vous aussi, acteur·rice du changement.",
  phone_number: "02 38 49 15 27",
  address: "Rue Prévost Paradol, 75014 Paris",
  email: "contact@lareservedesarts.org",
  status: "approved",
  registration_nb: "48077929700013"
  )
la_reserve_des_arts.save!

#PROJECT 4
agir_pour_la_prévention_des_déchets = Project.new(
  name: "Acteurs.trice d’une révolution environnementale",
  description: "Tri, rangement et assortiment des matériaux,présentation et décoration,faire de belles rencontres avec des professionnels du secteur culturel et bien d'autres choses pour devenir acteur de la Réserve des Arts ",
  address: "Rue Prévost Paradol, 75014 Paris",
  charity: la_reserve_des_arts,
  category: "Arts & culture"
  )
agir_pour_la_prévention_des_déchets.remote_photo_url = "https://sortir.telerama.fr/sites/tr_master/files/styles/m_plus_640x360/public/assets/images/place/79/34/1/originale.jpg?itok=7nKKHVis"
agir_pour_la_prévention_des_déchets.save!

#MISSIONS of PROJECT 5
agir_pour_la_prévention_des_déchets_journey = Mission.new(
  title: "Tri, rangement et assortiment",
  start_time: "2019-06-17 09:00:00",
  end_time: "2019-06-20 18:00:00",
  volunteers_count: 5,
  charity: la_reserve_des_arts,
  project: agir_pour_la_prévention_des_déchets
  )
agir_pour_la_prévention_des_déchets_journey.save

agir_pour_la_prévention_des_déchets_journey2 = Mission.new(
  title: "Décoration",
  start_time: "2019-07-17 09:00:00",
  end_time: "2019-07-17 18:00:00",
  volunteers_count: 1,
  charity: la_reserve_des_arts,
  project: agir_pour_la_prévention_des_déchets
  )
agir_pour_la_prévention_des_déchets_journey2.save

#CHARITY 6
nid_lyon =  Charity.new(
  name: "Mouvement du Nid",
  description: "Le Mouvement du Nid est une association reconnue d'utilite publique qui agit depuis 70 ans dans le domaine du droit des femmes auprès des personnes prostituees.
  Ses activites sont : la rencontre  des personnes prostituees, leur accompagnement dans une demarche de reinsertion, la formation des acteurs sociaux, la prevention auprès des jeunes la sensibilisation du grand public et le plaidoyer politique afin de faire emerger une societe sans prostitution.
  ",
  phone_number: "06 33 40 94 98",
  address: "70 rue Rachais 69007 LYON",
  email: "rhonealpes-69@mouvementdunid.org",
  status: "pending",
  registration_nb: "031S0031003275"
  )
nid_lyon.save!

#CHARITY 7
asso3 =  Charity.new(
  name: "Asso3",
  description: "secours aux SDF",
  phone_number: "02 38 49 15 27",
  address: "2 avenue du general Leclerc 44",
  email: "contact@asso3.fr",
  status: "declined",
  registration_nb: "?"
  )
asso3.save!

puts "Seeded 🦇"
