class Mission < ApplicationRecord
  belongs_to :charity
  belongs_to :skill, optional: true
  belongs_to :project
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
end
