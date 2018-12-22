class Participant < ApplicationRecord
  belongs_to :excurion
  has_many :excursions
end