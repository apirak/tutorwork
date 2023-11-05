class Branch < ApplicationRecord
  belongs_to :school
  has_many :rooms, dependent: :destroy
end
