class Charity < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_many :enrollments
  has_many :users, through: :enrollments
end
