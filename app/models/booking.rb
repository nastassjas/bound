class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  validates_uniqueness_of :user_id, :scope => :mission_id
end
