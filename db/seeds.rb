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
  distribution_nourriture = Mission.new(
    title: "Distribution nourriture",
    start_time: "2019-08-17 09:00:00",
    end_time: "2019-08-18 19:00:00",
    volunteers_count: 4,
    charity: hop_hop_food,
    project: garde_manger_solidaire
    )
  distribution_nourriture.save!

  preparation_repas = Mission.new(
    title: "Preparation repas",
    start_time: "2019-08-17 09:00:00",
    end_time: "2019-08-18 19:00:00",
    volunteers_count: 1,
    charity: hop_hop_food,
    project: garde_manger_solidaire,
    skill:skill_cooking
    )
  preparation_repas.save!

  transport_de_nourriture = Mission.new(
    title: "Transport de nourriture",
    start_time: "2019-08-17 09:00:00",
    end_time: "2019-08-18 19:00:00",
    volunteers_count: 5,
    charity: hop_hop_food,
    project: garde_manger_solidaire
    )
  transport_de_nourriture.save!

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
    name: "Formateur/trice benevole alpha/fle",
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
    name: "Acteurs.trices d’une révolution environnementale",
    description: "Tri, rangement et assortiment des matériaux,présentation et décoration,faire de belles rencontres avec des professionnels du secteur culturel et bien d'autres choses pour devenir acteur de la Réserve des Arts ",
    address: "Rue Prévost Paradol, 75014 Paris",
    charity: la_reserve_des_arts,
    category: "Arts & culture"
    )
  agir_pour_la_prévention_des_déchets.remote_photo_url = "https://sortir.telerama.fr/sites/tr_master/files/styles/m_plus_640x360/public/assets/images/place/79/34/1/originale.jpg?itok=7nKKHVis"
  agir_pour_la_prévention_des_déchets.save!

  #MISSIONS of PROJECT 4
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

#CHARITY 5
  wayne =  Charity.new(
    name: "Wayne",
    description: "Musique pour Tous accompagne les musiciens passionnés désireux de s’impliquer à l’échelle locale dans un projet de société concret : rencontrer et partager avec des jeunes leur passion pour la musique.",
    phone_number: "09 53 40 25 79",
    address: "121 Rue Caulaincourt, 75018 Paris",
    email: "liam.yoyo@yahoo.fr",
    status: "approved",
    registration_nb: "9G2S9712008364"
    )
  wayne.save!

#PROJECT 5
  music_to_change = Project.new(
    name: "What do you fear?",
    description: "Être animateur Musique, c’est être convaincu que tout musicien est un acteur de changement en devenir",
    address: "121 Rue Caulaincourt, 75018 Paris",
    charity: wayne,
    category: "Arts & culture"
    )
  music_to_change.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560159690/slack-imgs_d1saq7.jpg"
  music_to_change.save!

#MISSIONS of PROJECT 5
  music_to_change = Mission.new(
    title: "Animateur.trices Musique",
    start_time: "2019-06-15 09:00:00",
    end_time: "2019-06-15 18:00:00",
    volunteers_count: 5,
    charity: wayne,
    project: music_to_change
    )
  music_to_change.save

#CHARITY 6
  les_dauphins =  Charity.new(
    name: "Les Dauphins du 15e",
    description: "Depuis 25 ans, le club de natation adaptée "Les Dauphins du 15e", créé par les Papillons Blancs de Paris, permet à une cinquantaine d'adultes en situation de handicap mental de profiter d'une heure par semaine à la piscine.",
    phone_number: "02 38 49 15 27",
    address: "13 Rue du Général Guillaumat, 75015 PARIS",
    email: "contact@lesdauphins.fr",
    status: "approved",
    registration_nb: "?"
    )
  les_dauphins.save!

#PROJECT 6
    apprentissage_de_la_natation = Project.new(
    name: "Apprentissage de la natation",
    description: "Participer à des jeux et des temps de détente pour les plus réticents à la nage et aider les dauphins débutants dans leurs premières nages",
    address: "13 Rue du Général Guillaumat, 75015 Paris",
    charity: les_dauphins,
    category: "Arts & culture"
    )
  apprentissage_de_la_natation.remote_photo_url = "https://www.luxschool.com/wp-content/uploads/2019/02/Natation-adultes-800-532.jpg"
  apprentissage_de_la_natation.save!

#MISSIONS of PROJECT 6
  prof_de_natation = Mission.new(
    title: "Maître nageur/nageuse",
    start_time: "2019-06-15 09:00:00",
    end_time: "2019-06-15 18:00:00",
    volunteers_count: 5,
    charity: les_dauphins,
    project: apprentissage_de_la_natation
    )
  prof_de_natation.save

#CHARITY 7
  vsart =  Charity.new(
    name: "Vsart",
    description: "VSArt se propose d'apporter, au moyen de l'art et de la culture (conférences, concerts, ateliers d'arts plastiques, de chant, de la parole ou toute discipline selon la compétence des bénévoles et accompagnements) un soutien moral à toutes personnes en situation de difficulté : enfants hospitalisés, jeunes de quartiers défavorisés, malades, personnes âgées, détenus, personnes handicapées.",
    phone_number: "02 38 49 15 27",
    address: "36 rue du Fer à Moulin, 75005 Paris",
    email: "contact@vsart.fr",
    status: "approved",
    registration_nb: "?"
    )
  vsart.save!

#PROJECT 7
    animation_ateliers_artistiques = Project.new(
    name: "Anim.d'ateliers artistiques ",
    description: "Vous maîtrisez une technique artistique (dessin, peinture, modelage, art floral... ou simplement la parole ou le conte) et vous voulez en faire profiter des personnes âgées en maison de retraite ou hospitalisées.",
    address: "36 rue du Fer à Moulin, 75005 Paris",
    charity: vsart,
    category: "Arts & culture"
    )
  animation_ateliers_artistiques.remote_photo_url = "http://ecartsdarts.com/wp-content/uploads/2014/09/formation-ASG-Irst-animation-artistique-atelier-dessin.jpg"
  animation_ateliers_artistiques.save!

#MISSIONS of PROJECT 7
  animation_artistiques = Mission.new(
    title: "Animateur.trices artistiques",
    start_time: "2019-06-15 09:00:00",
    end_time: "2019-06-15 18:00:00",
    volunteers_count: 3,
    charity: vsart,
    project: animation_ateliers_artistiques
    )
  animation_artistiques.save

#CHARITY 8
  la_maison_belleville =  Charity.new(
    name: "La maison belleville",
    description: "Le centre social et culturel, La maison du Bas Belleville, est ouvert pour toutes et pour tous. Si vous souhaitez devenir bénévoles sur l'une de nos activités: écrivains publics, ateliers linguistiques, modules linguistiques à visée professionnelle, accompagnement à la scolarité, permanences informatiques",
    phone_number: "02 38 49 15 27",
    address: "110 boulevard de Belleville, 75020 Paris",
    email: "contact@maisonbelleville.fr",
    status: "approved",
    registration_nb: "?"
    )
  la_maison_belleville.save!

#PROJECT 8
    animation_pour_les_enfants = Project.new(
    name: "Ateliers de découverte pour les enfants ",
    description: "Envie de partager vos talents, savoir-faire et centres d’intérêts avec les nouvelles générations ? Alors devenez bénévole à la Maison du Bas-Belleville et proposez des séances de découverte aux primaires et collégiens inscrits à l’accompagnement à la scolarité (arts plastiques, travaux manuels, jardinage, écriture... ). ",
    address: "110 boulevard de Belleville, 75020 Paris",
    charity: la_maison_belleville,
    category: "Arts & culture"
    )
  animation_pour_les_enfants.remote_photo_url = "http://ecartsdarts.com/wp-content/uploads/2014/09/formation-ASG-Irst-animation-artistique-atelier-dessin.jpg"
  animation_pour_les_enfants.save!

#MISSIONS of PROJECT 8
  animation_artistiques = Mission.new(
    title: "Animateur.trices artistiques",
    start_time: "2019-06-15 09:00:00",
    end_time: "2019-06-15 18:00:00",
    volunteers_count: 3,
    charity: la_maison_belleville,
    project: animation_pour_les_enfants
    )
  animation_artistiques.save

#CHARITY 9
  ateliers_pluriculturels =  Charity.new(
    name: "Ateliers pluriculturels",
    description: "Les Ateliers Pluriculturels organisent des animations culturelles en adéquation avec ses projets, visant à promouvoir ses actions, avec le soutien actuel de l'officiel. L'association travaille en lien avec un réseau associatif ayant pour but de découvrir la diversité des cultures et de la solidarité",
    phone_number: "02 38 49 15 27",
    address: "53 Rue Nationale, 75013 Paris",
    email: "contact@atelierspluriculturels.fr",
    status: "approved",
    registration_nb: "?"
    )
  ateliers_pluriculturels.save!

#PROJECT 9
    atelier_tricot = Project.new(
    name: "Ateliers cours de tricot",
    description: "Nous recherchons un(e) bénévole, ayant des compétences en tricot et désireuses de les transmettre pour animer un atelier hebdomadaire à destination des habitants du quartier.",
    address: "53 Rue Nationale, 75013 Paris",
    charity: ateliers_pluriculturels,
    category: "Arts & culture"
    )
  atelier_tricot.remote_photo_url = "http://ecartsdarts.com/wp-content/uploads/2014/09/formation-ASG-Irst-animation-artistique-atelier-dessin.jpg"
  atelier_tricot.save!

#MISSIONS of PROJECT 8
  animation_tricot = Mission.new(
    title: "Animateur.trices cours de tricot",
    start_time: "2019-06-15 09:00:00",
    end_time: "2019-06-15 18:00:00",
    volunteers_count: 3,
    charity: ateliers_pluriculturels,
    project: atelier_tricot
    )
  animation_tricot.save

  puts "Seeded 🦇"
