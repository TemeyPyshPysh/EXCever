class Participant < ApplicationRecord
  GUIDE_ROLE = 'guide'
  TRIPPER_ROLE = 'tripper'
  ROLES = [GUIDE_ROLE, TRIPPER_ROLE]

  validate :not_empty_full_name
  validate :not_empty_uniq_nickname

  def not_empty_uniq_nickname
    if not nickname.present?
      errors.add(:nickname, "can't be empty")
    end
    if Participant.all.map{|t| t.nickname != nickname ? t.nickname : ""}.include? nickname
      errors.add(:nickname, "must be unique!")
    end
  end

  def not_empty_full_name
    if not full_name.present?
      errors.add(:full_name, "can't be empty")
    end
  end

  has_many :excursions, :through => :tripper_excurs
  has_many :excursions

  mount_uploader :photo, PhotoUploader

  # validates :role, inclusion: { in: ROLES,
  #                   message: 'Undefined role'}
end