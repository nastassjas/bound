class Charity < ApplicationRecord
  has_many :missions
  has_many :enrollments
end
