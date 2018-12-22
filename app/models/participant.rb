class Participant < ApplicationRecord
  validate :not_empty_full_name
  validate :not_empty_uniq_nickname

  def not_empty_uniq_nickname
    if not nickname.present?
      errors.add(:nickname, "can't be empty")
    end
    if Participant.all.map{|t| t.nickname}.include? nickname
      erros.add(:nickname, "must be unique!")
    end
  end

  def not_empty_full_name
    if not full_name.present?
      errors.add(:full_name, "can't be empty")
    end
    if full_name.length > 40
      erros.add(:full_name, "can't be more than 40 characters")
    end
  end

  has_many :excursions, :through => :tripper_excurs
  has_many :excursions
end