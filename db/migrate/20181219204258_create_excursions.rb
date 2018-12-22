class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    create_table :excursions do |t|
      t.string :name
      t.date :start_date
      t.text :description
      t.text :short_description
      t.belongs_to :guide
      t.timestamps
    end

    create_table :users do |t|
      t.string :full_name
      t.string :nickname
      t.integer :rating
      t.timestamps
    end

  end
end
