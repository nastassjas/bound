class Mission < ApplicationRecord
  belongs_to :charity
  belongs_to :skill
  has_many :bookings
end
