class Participant < ApplicationRecord
  has_many :guide_excurs
  has_many :tripper_excurs
end