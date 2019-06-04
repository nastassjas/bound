class Enrollment < ApplicationRecord
  belongs_to :association
  belongs_to :user
end
