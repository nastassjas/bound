class Association < ApplicationRecord
  has_many :missions
  has_many :enrollments
end
