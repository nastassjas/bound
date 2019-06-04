class Mission < ApplicationRecord
  belongs_to :association, classname: "charity"
  belongs_to :skill
  has_many :bookings
end
