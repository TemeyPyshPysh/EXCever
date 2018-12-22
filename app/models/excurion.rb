class Excursion < ApplicationRecord
  belongs_to :participant
  has_many :participants
end