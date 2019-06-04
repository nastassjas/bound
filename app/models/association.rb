class Association < ApplicationRecord
  has_many :missions
  has_many :enrollments
  has_many :users, through: :enrollments
end
