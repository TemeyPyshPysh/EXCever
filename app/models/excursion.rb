class Excursion < ApplicationRecord
  belongs_to :guide
  has_many :trippers 
end