class AddPhotoToexcursion < ActiveRecord::Migration[5.2]
  def change
    add_column :excursions, :photo, :string
    add_column :participants, :photo, :string
  end
end
