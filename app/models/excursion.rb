class Excursion < ApplicationRecord
  has_many :participants, :through => :tripper_excurss
  belongs_to :participant
end