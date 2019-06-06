class Project < ApplicationRecord
  PROJECTCATEGORY = ['Toutes les catégories', 'Arts & culture', 'Environnement', 'Collecte & Distribution', 'Langues & éducation', 'Sport & loisirs', 'Handicap', 'Sénior.e.s', 'Enfants & adolescent.e.s', 'LGBTQI', 'Racism & Antisémitisme', 'Violences domestiques', 'Droits des femmes']
  belongs_to :charity
  has_many :missions

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :charity, presence: true
  validates :category, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
