class School < ApplicationRecord
  has_one_attached :logo
  has_many :branches, dependent: :destroy
end
