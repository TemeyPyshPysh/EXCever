class Excursion < ApplicationRecord
  validate :start_date_cannot_be_in_the_past
  validate :name_is_not_empty
  validate :short_discription_is_not_empty_and_its_length_less_40
  validate :guide_id_must_be

  def guide_id_must_be
    if guide_id.present?
      errors.add("can't be empty")
    end
  end

  def short_discription_is_not_empty_and_its_length_less_40
    if short_description.present? && (short_description == '' || short_description.length > 40)
      errors.add(:short_description, "can't be empty and more than 40 characters")
    end
  end

  def name_is_not_empty
    if name.present? && name == ''
      errors.add(:name, "can't be empty")
    end
  end

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end


  has_many :participants, :through => :tripper_excurss
  has_one :participant
end