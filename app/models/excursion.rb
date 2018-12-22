class Excursion < ApplicationRecord
  has_many :participants, :through => :tripper_excurss
  has_one :participant
end