class Participant < ApplicationRecord
  has_many :excursions, :through => :tripper_excurs
  has_many :excursions
end