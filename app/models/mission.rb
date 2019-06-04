class Mission < ApplicationRecord
  belongs_to :charity
  belongs_to :skill, optional: true
  has_many :bookings
  has_many :users, through: :bookings
end
