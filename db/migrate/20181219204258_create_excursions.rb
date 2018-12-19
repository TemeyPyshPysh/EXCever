class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      t.integer :excurs_id
      t.string :name
      t.date :start_date
      t.text :description
      t.text :short_description
      t.belongs_to :guide
      t.timestamps
    end
    create_table :guides do |t|
      t.integer :guid_id
      t.string :name
      t.integer :rating
      t.date :registration_date
      t.timestamps
    end
  end
end
