class Excursion < ApplicationRecord
  has_many :tripper_excurs
  has_one :guide_excurs
end