class Excursion < ApplicationRecord
  validates :start_date, not_in_past: true

  has_many :participants, :through => :tripper_excurss
  has_one :participant
end