class Project < ApplicationRecord
  belongs_to :charity
  has_many :missions
end
