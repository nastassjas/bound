class Mission < ApplicationRecord
  belongs_to :association
  belongs_to :skill
  has_many :bookings
end
