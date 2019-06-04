class User < ApplicationRecord
  has_many :bookings
  has_many :missions, through: :bookings
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :enrollments
  has_many :associations, through: :enrollments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
