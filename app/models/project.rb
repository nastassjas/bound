class Project < ApplicationRecord
  PROJECTCATEGORY = ['Toutes les catégories', 'Arts & Culture', 'Environnement', 'Collecte & Distribution', 'Langues & Education', 'Sport & Loisirs', 'Handicap', 'Sénior.e.s', 'Enfants & Adolescent.e.s', 'LGBTQI', 'Racisme & Antisémitisme', 'Violences domestiques', 'Droits des femmes']
  belongs_to :charity
  has_many :missions

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :charity, presence: true
  validates :category, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
