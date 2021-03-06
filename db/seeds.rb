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
    password: "123456",
    email: "van@wayne.com",
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
    skill_it = Skill.create!(name: "Web")
    skill_cooking = Skill.create!(name: "Cuisine")
    skill_medical = Skill.create!(name: "Medical")
    skill_psycho = Skill.create!(name: "Psychologie")
    skill_english = Skill.create!(name: "Anglophone")
    skill_photographer = Skill.create!(name: "Photographie")
    skill_builder = Skill.create!(name: "Maçonnerie")
    skill_teaching = Skill.create!(name: "Professeur.e")


  #CHARITY 1

  hop_hop_food =  Charity.new(
    name: "HopHopFood",
    description: "Reduction du gaspillage alimentaire des particulier.e.s par une plateforme digitale geolocalisee Par cette plateforme, creation de solidarite en luttant contre la precarite alimentaire de populations fragiles (etudiant.e.s, migrant.e.s, etc.)",
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
    description: "Nous cherchons des benevoles pour être des anges-gardien.ne.s de ces GMS, c'est à dire s'engager à passer regulièrement (quelques fois par semaine serait top) pour verifier que tout se passe bien (5 mn). Ce serait pratique que la.e benevole habite ou travaille tout près du GMS.",
    address: "281 Rue du Faubourg Saint-Antoine, 75011 Paris",
    charity: hop_hop_food,
    category: "Collecte & Distribution",
    )
  garde_manger_solidaire.remote_photo_url = "https://diabetestimes.co.uk/wp-content/uploads/2015/09/refugee-1024x768.jpg"
  garde_manger_solidaire.save!

  # MISSIONS of PROJECT 1
  distribution_nourriture = Mission.new(
    title: "Distribution nourriture",
    start_time: Date.parse("2019-08-17"),
    end_time: Date.parse("2019-08-18"),
    volunteers_count: 4,
    charity: hop_hop_food,
    project: garde_manger_solidaire
    )
  distribution_nourriture.save!

  preparation_repas = Mission.new(
    title: "Preparation repas",
    start_time: Date.parse("2019-08-17"),
    end_time: Date.parse("2019-08-18"),
    volunteers_count: 1,
    charity: hop_hop_food,
    project: garde_manger_solidaire,
    skill:skill_cooking
    )
  preparation_repas.save!

  #CHARITY 2
  agence_innovation_solidaire =  Charity.new(
    name: "Agence d'innovation solidaire",
    description: "Groupe de reflexion sur la meilleure façon de repondre aux besoins des menages les plus demunis dans le domaine economique, l'accès aux differents dispositifs sociaux et culturels, la sante etc...debouchant sur la creation de concepts et de produits ou de services ouverts à tou.te.s.",
    phone_number: "01 47 56 78 39",
    address: "187 Rue de Clignancourt, 75018 Paris",
    email: "lydia.vergerolle@gmail.com",
    status: "pending",
    registration_nb: "751P00108654"
    )
  agence_innovation_solidaire.save!

  # PROJECT 2
  formateur_benevole_alpha = Project.new(
    name: "Formateur.trice benevole alpha/fle",
    description: "A Livres Ouverts recrute des formateurs.trices benevoles ALPHA/FLE pour animer des cours de français (niveau Alpha, debutant et avance) pour des personnes vivant en habitat indigne et pour des personnes refugiees et apporter une petite formation aux nouveaux.elles benevoles. Les cours auront lieu desormais dans notre antenne de Marseille (13)",
    address: "187 Rue de Clignancourt, 75018 Paris",
    charity: agence_innovation_solidaire,
    category: "Langues & éducation"
    )
  formateur_benevole_alpha.remote_photo_url = "https://static1.squarespace.com/static/540f698be4b05f0d2fb47512/59d76d744c326dcba5df2187/59d76d766f4ca3f9b42da1b1/1507290552799/IMG_2050.JPG?format=750w"
  formateur_benevole_alpha.save!

  # MISSIONS PROJECT 2
  formateur_journey = Mission.new(
    title: "Cours de français",
    start_time: Date.parse("2019-06-17"),
    end_time: Date.parse("2019-06-23"),
    volunteers_count: 10,
    charity: agence_innovation_solidaire,
    project: formateur_benevole_alpha,
    skill: skill_teaching
    )
  formateur_journey.save!

  #CHARITY 3
  secours_populaire_31 =  Charity.new(
    name: "Secours Populaire",
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
    title: "Conducteur.trice",
    start_time: Date.parse("2019-08-17"),
    end_time: Date.parse("2019-08-30"),
    volunteers_count: 1,
    charity: secours_populaire_31,
    project: distribution_flyers_chatbot
    )
  distribution_journey.save!

  distribution_journey = Mission.new(
    title: "Distribution flyers",
    start_time: Date.parse("2019-09-17"),
    end_time: Date.parse("2019-09-20"),
    volunteers_count: 15,
    charity: secours_populaire_31,
    project: distribution_flyers_chatbot
    )
  distribution_journey.save!

  #CHARITY 4
  la_reserve_des_arts =  Charity.new(
    name: "LaReservedesArts",
    description: "La Réserve des arts est une association qui récupère des rebuts et chutes de matériaux dans les entreprises, les valorise et les revend aux professionnel.le.s de la création.
    La Réserve des arts répond à une triple mission : réduire durablement les déchets, soutenir le secteur culturel et promouvoir le réemploi.
    L’écologie est une révolution culturelle. Devenez, vous aussi, acteur.trice du changement.",
    phone_number: "02 38 49 15 27",
    address: "Rue Prévost Paradol, 75014 Paris",
    email: "contact@lareservedesarts.org",
    status: "approved",
    registration_nb: "48077929700013"
    )
  la_reserve_des_arts.save!

  #PROJECT 4
  agir_pour_la_prévention_des_déchets = Project.new(
    name: "Acteurs.trices environnemental.es",
    description: "Tri, rangement et assortiment des matériaux,présentation et décoration,faire de belles rencontres avec des professionnel.le.s du secteur culturel et bien d'autres choses pour devenir acteur de la Réserve des Arts ",
    address: "Rue Prévost Paradol, 75014 Paris",
    charity: la_reserve_des_arts,
    category: "Arts & culture"
    )
  agir_pour_la_prévention_des_déchets.remote_photo_url = "https://sortir.telerama.fr/sites/tr_master/files/styles/m_plus_640x360/public/assets/images/place/79/34/1/originale.jpg?itok=7nKKHVis"
  agir_pour_la_prévention_des_déchets.save!

  #MISSIONS of PROJECT 4
  agir_pour_la_prévention_des_déchets_journey = Mission.new(
    title: "Tri, rangement et assortiment",
    start_time: Date.parse("2019-12-17"),
    end_time: Date.parse("2019-12-24"),
    volunteers_count: 5,
    charity: la_reserve_des_arts,
    project: agir_pour_la_prévention_des_déchets
    )
  agir_pour_la_prévention_des_déchets_journey.save

  agir_pour_la_prévention_des_déchets_journey2 = Mission.new(
    title: "Décoration",
    start_time: Date.parse("2019-12-17"),
    end_time: Date.parse("2019-12-20"),
    volunteers_count: 1,
    charity: la_reserve_des_arts,
    project: agir_pour_la_prévention_des_déchets
    )
  agir_pour_la_prévention_des_déchets_journey2.save

#CHARITY 5
  wayne =  Charity.new(
    name: "Wayne",
    description: "Accompagne les musicien.ne.s passionné.e.s désireux.ses de s’impliquer à l’échelle locale dans un projet de société concret : rencontrer et partager avec des jeunes leur passion pour la musique.",
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
    description: "Être animateur.trice Musique, c’est être convaincu.e que tout.e musicien.ne est un.e acteur.trice de changement en devenir",
    address: "121 Rue Caulaincourt, 75018 Paris",
    charity: wayne,
    category: "Arts & culture"
    )
  music_to_change.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560159690/slack-imgs_d1saq7.jpg"
  music_to_change.save!

#MISSIONS of PROJECT 5
  music_to_change = Mission.new(
    title: "Animateur.trices Musique",
    start_time: Date.parse("2019-06-15"),
    end_time: Date.parse("2019-06-15"),
    volunteers_count: 5,
    charity: wayne,
    project: music_to_change
    )
  music_to_change.save

#CHARITY 6
  les_dauphins =  Charity.new(
    name: "Les Dauphins du 15e",
    description: "Depuis 25 ans, le club de natation adaptée Les Dauphins du 15e, créé par les Papillons Blancs de Paris, permet à une cinquantaine d'adultes en situation de handicap mental de profiter d'une heure par semaine à la piscine.",
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
    description: "Participer à des jeux et des temps de détente pour les plus réticent.e.s à la nage et aider les dauphins débutant.e.s dans leurs premières nages",
    address: "13 Rue du Général Guillaumat, 75015 Paris",
    charity: les_dauphins,
    category: "Sport & Loisirs"
    )
  apprentissage_de_la_natation.remote_photo_url = "https://www.luxschool.com/wp-content/uploads/2019/02/Natation-adultes-800-532.jpg"
  apprentissage_de_la_natation.save!

#MISSIONS of PROJECT 6
  prof_de_natation = Mission.new(
    title: "Maître nageur / nageuse",
    start_time: Date.parse("2019-08-17"),
    end_time: Date.parse("2019-08-19"),
    volunteers_count: 5,
    charity: les_dauphins,
    project: apprentissage_de_la_natation
    )
  prof_de_natation.save

#CHARITY 7
  vsart =  Charity.new(
    name: "Vsart",
    description: "VSArt se propose d'apporter, au moyen de l'art et de la culture (conférences, concerts, ateliers d'arts plastiques, de chant, de la parole ou toute discipline selon la compétence des bénévoles et accompagnements) un soutien moral à toutes personnes en situation de difficulté : enfants hospitalisés, jeunes de quartiers défavorisés, malades, personnes âgées, détenu.e.s, personnes handicapées.",
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
    start_time: Date.parse("2019-08-22"),
    end_time: Date.parse("2019-08-23"),
    volunteers_count: 3,
    charity: vsart,
    project: animation_ateliers_artistiques
    )
  animation_artistiques.save

#CHARITY 8
  la_maison_belleville =  Charity.new(
    name: "La maison belleville",
    description: "Le centre social et culturel, La maison du Bas Belleville, est ouvert pour toutes et pour tous. Si vous souhaitez devenir bénévoles sur l'une de nos activités: écrivain.e.s public.que.s, ateliers linguistiques, modules linguistiques à visée professionnelle, accompagnement à la scolarité, permanences informatiques",
    phone_number: "02 38 49 15 27",
    address: "110 boulevard de Belleville, 75020 Paris",
    email: "contact@maisonbelleville.fr",
    status: "approved",
    registration_nb: "?"
    )
  la_maison_belleville.save!

#PROJECT 8
    animation_pour_les_enfants = Project.new(
    name: "Ateliers pour les enfants ",
    description: "Envie de partager vos talents, savoir-faire et centres d’intérêts avec les nouvelles générations ? Alors devenez bénévole à la Maison du Bas-Belleville et proposez des séances de découverte aux primaires et collégien.ne.s inscrit.e.s à l’accompagnement à la scolarité (arts plastiques, travaux manuels, jardinage, écriture... ). ",
    address: "110 boulevard de Belleville, 75020 Paris",
    charity: la_maison_belleville,
    category: "Arts & culture"
    )
  animation_pour_les_enfants.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560172219/kids-2985782_1280-1024x683_oafwh2.jpg"
  animation_pour_les_enfants.save!

#MISSIONS of PROJECT 8
  animation_artistiques = Mission.new(
    title: "Animateur.trices artistiques",
    start_time: Date.parse("2019-08-15"),
    end_time: Date.parse("2019-08-15"),
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
    description: "Nous recherchons un.e bénévole, ayant des compétences en tricot et désireuses de les transmettre pour animer un atelier hebdomadaire à destination des habitant.e.s du quartier.",
    address: "53 Rue Nationale, 75013 Paris",
    charity: ateliers_pluriculturels,
    category: "Arts & culture"
    )
  atelier_tricot.remote_photo_url = "https://www.unidivers.fr/wp-content/uploads/2018/11/1505241_image_42617408_1133769363439842_5213805459407896576_n.jpg"
  atelier_tricot.save!

#MISSIONS of PROJECT 9
  animation_tricot = Mission.new(
    title: "Animateur.trice.s cours de tricot",
    start_time: Date.parse("2019-08-01"),
    end_time: Date.parse("2019-08-09"),
    volunteers_count: 3,
    charity: ateliers_pluriculturels,
    project: atelier_tricot
    )
  animation_tricot.save

#CHARITY 10
  vivre_ensemble =  Charity.new(
    name: "Kif kif vivre ensemble",
    description: "Les Ateliers Pluriculturels organisent des animations culturelles en adéquation avec ses projets, visant à promouvoir ses actions, avec le soutien actuel de l'officiel. L'association travaille en lien avec un réseau associatif ayant pour but de découvrir la diversité des cultures et de la solidarité",
    phone_number: "02 38 49 15 27",
    address: "123 boulevard Voltaire, 75011 Paris",
    email: "contact@vivreensemble.fr",
    status: "approved",
    registration_nb: "?"
    )
  vivre_ensemble.save!

#PROJECT 10
  fête_de_quartier = Project.new(
    name: "Régisseur.euse son ",
    description: "Pour une grande fête de quartier annuelle, notre collectif d'associations recherche un.e bénévole de choc. Sa mission : fournir un son de qualité aux artistes et au public !",
    address: "123 boulevard Voltaire, 75011 Paris",
    charity: vivre_ensemble,
    category: "Arts & culture"
    )
  fête_de_quartier.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560162325/26686950247_08aacd2cdd_b_gqy73p.jpg"
  fête_de_quartier.save!

#MISSIONS of PROJECT 10
  regisseur_son = Mission.new(
    title: "Régisseur.euse son",
    start_time: Date.parse("2019-08-12"),
    end_time: Date.parse("2019-08-13"),
    volunteers_count: 1,
    charity: vivre_ensemble,
    project: fête_de_quartier
    )
  regisseur_son.save!

#CHARITY 11
  jardin_ensemble =  Charity.new(
    name: "Veni Verdi",
    description: "L'association Veni Verdi a pour objectif de créer des jardins en milieu urbain, notamment au sein des écoles, pour agir sur notre environnement, notre société et notre économie. Elle souhaite produire une alimentation saine, accessible au plus grand nombre.",
    phone_number: "02 44 88 15 07",
    address: "24 Rue le vau, 75020 Paris",
    email: "contact@veniverdi.fr",
    status: "approved",
    registration_nb: "?"
    )
  jardin_ensemble.save!

#PROJECT 11
    jardinez = Project.new(
    name: "Jardinez à la ferme urbaine",
    description: "Présente dans de nombreuses écoles et sur plusieurs toits, l'association s'est installée depuis octobre 2014 dans l'enceinte du Collège Pierre Mendès France. Avec les 4800m2 en pleine terre qui lui ont été confiées, l'association a besoin de soutien pour développer ce beau projet. C'est là que vous intervenez, avec, quand ils.elles sont présent.e.s, des collégien.ne.s qui souhaitent embellir leur collège et apprendre à jardiner !",
    address: "24 Rue le vau, 75020 Paris",
    charity: jardin_ensemble,
    category: "Environnement"
    )
  jardinez.remote_photo_url = "https://www.rustica.fr/assets/media/image/upload/images/Puzzle%20BEAUtanique%2005.jpg"
  jardinez.save!

#MISSIONS of PROJECT 11
    mission_jardin = Mission.new(
    title: "réalisation de ce projet d'agriculture",
    start_time: Date.parse("2019-06-28"),
    end_time: Date.parse("2019-06-28"),
    volunteers_count: 5,
    charity: jardin_ensemble,
    project: jardinez
    )
  mission_jardin.save!

#CHARITY 12
  habitat_humanisme =  Charity.new(
    name: "Habitat et Humanisme IDF",
    description: "Habitat-Humanisme a vocation à accueillir et accompagner des personnes mal logées et fragiles. En leur offrant un logement décent, dans un quartier équilibré, l’association favorise ainsi leur autonomie et la consolidation de leur situation afin d'avoir accès rapidement à un logement pérenne.",
    phone_number: "09 63 19 27 15",
    address: "32 boulevard Auguste Blanqui, 75013 Paris",
    email: "valerie.phaisavath@hotmail.com",
    status: "approved",
    registration_nb: "?"
    )
  habitat_humanisme.save!

#PROJECT 12
  organisation_sorties = Project.new(
    name: "Culture & loisirs - organisateur.trice de sorties - 13e",
    description: "Le groupe local Paris 13e/14e de Habitat et Humanisme recherche un.e bénévole pour l'aider à imaginer et organiser quelques sorties simples et sympas avec les familles et les enfants relogé.e.s par notre association dans le quartier.",
    address: "À effectuer sur le lieu de son choix.",
    charity: habitat_humanisme,
    category: "Arts & culture"
  )
  organisation_sorties.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560414966/af682916e2_btqshc.jpg"
  organisation_sorties.save!

#MISSIONS of PROJECT 12
  organisateur_sorties = Mission.new(
    title: "Organisateur.trice de sorties - 13e",
    start_time: Date.parse("2019-12-12"),
    end_time: Date.parse("2019-12-20"),
    volunteers_count: 1,
    charity: habitat_humanisme,
    project: organisation_sorties
    )
  organisateur_sorties.save!

#CHARITY 13
  black_and_white_production =  Charity.new(
    name: "Black and White production",
    description: "Black and White production a pour but de favoriser la diversité musicale grâce à l’organisation de concerts, sous forme de plateaux d’artistes, mélangeant différents styles musicaux. A la fois dénicheurs de talents et producteurs de concerts, nous œuvrons à travers des salles et pubs pour révéler les artistes émergent.e.s des futurs scènes parisiennes.",
    phone_number: "01 43 33 20 12",
    address: "8 Rue Oberkampf, 75011 Paris",
    email: "yohangregoire@gmail.com",
    status: "approved",
    registration_nb: "?"
    )
  black_and_white_production.save!

#PROJECT 13
  evenementiel_paris = Project.new(
    name: "Photographe Evénementiel",
    description: "Dans le cadre de son développement, Black and White production recherche des bénévoles pour compléter son équipe. Plusieurs postes sont à pourvoir: -Photographe -Caméraman.woman -direction artistique -Booking -Développement externe Black and White production est une association culturelle, organisatrice de concerts à Paris. Nous proposons diverses formations et permettons à chacun.e de développer de nouvelles compétences.",
    address: "8 Rue Oberkampf, 75011 Paris",
    charity: black_and_white_production,
    category: "Arts & culture"
    )
  evenementiel_paris.remote_photo_url = "https://res.cloudinary.com/dqi7etmsi/image/upload/v1560416166/camera-dslr-camera-equipment-1615824_acwjcj.jpg"
  evenementiel_paris.save!

#MISSIONS of PROJECT 13
  photographe1 = Mission.new(
    title: "Photographe événementiel",
    start_time: Date.parse("2019-06-21"),
    end_time: Date.parse("2019-07-30"),
    volunteers_count: 1,
    charity: black_and_white_production,
    project: evenementiel_paris
    )
  photographe1.save!

#CHARITY 14

la_sauge_la_prairie_du_canal =  Charity.new(
    name: "La Sauge - La Prairie du Canal",
    description: "La SAUGE (Société d’Agriculture Urbaine Généreuse et Engagée) a pour objectif de favoriser la pratique d’une activité agricole pour le plus grand nombre. Elle crée des potagers urbains et organise des évènements fédérateurs et communicatifs sur l’Agriculture Urbaine.",
    phone_number: "02 38 49 15 27",
    address: "3 rue Dampierre, 75019 Paris",
    email: "contact@lasauge.fr",
    status: "approved",
    registration_nb: "?"
    )
la_sauge_la_prairie_du_canal.save!

#PROJECT 14
  bricolage = Project.new(
    name: "Bricolage à La Prairie du Canal",
    description: "Scier, poncer, fabriquer des structures en bois. Amenager, ranger l'espace de vie. Découvrir une équipe et un projet innovant, en apprendre plus sur l'agriculture urbaine !",
    address: "55 rue de Paris, 93000 Bobigny",
    charity: la_sauge_la_prairie_du_canal,
    category: "Arts & culture"
    )
  bricolage.remote_photo_url = "https://alternatiba.eu/toulouse/wp-content/uploads/sites/13/2019/03/rafistolerie-photo.jpg"
  bricolage.save!

#MISSIONS of PROJECT 14
  bricolage1 = Mission.new(
    title: "Bricolage à La Prairie du Canal",
    start_time: Date.parse("2019-06-20"),
    end_time: Date.parse("2019-06-20"),
    volunteers_count: 3,
    charity: la_sauge_la_prairie_du_canal,
    project: bricolage
    )
  bricolage1.save!

#MISSIONS of PROJECT 14
  bricolage2 = Mission.new(
    title: "Bricolage à La Prairie du Canal",
    start_time: Date.parse("2019-06-27"),
    end_time: Date.parse("2019-06-27"),
    volunteers_count: 3,
    charity: la_sauge_la_prairie_du_canal,
    project: bricolage
    )
  bricolage2.save!

#CHARITY 15
basiliade =  Charity.new(
    name: "Basiliade",
    description: "Accueil et accompagnement de personnes vivant en précarité et touchées par le par le VIH/SIDA, dans un objectif de retour durable à l’autonomie : des actions menées par une équipe salariée et des lieux d’accueil animés par des bénévoles (repas le soir et activités artistiques en semaine).",
    phone_number: "01 43 18 15 32",
    address: "16 Rue du Général Brunet, 75019 Paris",
    email: "nicolas.bonlieu@gmail.com",
    status: "approved",
    registration_nb: "?"
    )
basiliade.save!

#PROJECT 15
atelier_artistique = Project.new(
    name: "Accueil/écoute dans un atelier artistique",
    description: "Intégrer une équipe d'une quinzaine de bénévoles qui animent un atelier artistique (peinture, aquarelle, sculpture, modelage, poterie...) accueillant des personnes vivant en précarité et touchées par le VIH SIDA. L'Atelier est ouvert tous les jours de la semaine de 14 h à 18 h. Tou.te.s les bénévoles sont formé.es et accompagné.e.s : capacité d'écoute et capacité à faire respecter un cadre sont requises.",
    address: "16 Rue du Général Brunet, 75019 Paris",
    charity: basiliade,
    category: "Arts & culture"
    )
atelier_artistique.remote_photo_url = "http://lucilebolot.com/wp-content/uploads/2018/01/geste-2-1024x681.jpg"
atelier_artistique.save!

#MISSIONS of PROJECT 15
accueil_ecoute  = Mission.new(
    title: "Accueil/écoute dans un atelier artistique",
    start_time: Date.parse("2019-06-15"),
    end_time: Date.parse("2019-06-30"),
    volunteers_count: 10,
    charity: basiliade,
    project: atelier_artistique
    )
accueil_ecoute.save!


  puts "Seeded 🦇"
