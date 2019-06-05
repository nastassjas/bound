class Skill < ApplicationRecord
  has_many :user_skills
  has_many :missions, dependent: :nullify
  has_many :users, through: :user_skills
end
