class Tripper_excurs < ApplicationRecord
  belongs_to :excursion
  belongs_to :participant
end