class Participant < ApplicationRecord
  belongs_to :excursion
  has_many :excursions
end