class CreateExcursions < ActiveRecord::Migration[5.2]
  def self.up

    create_table :users do |t|
      t.string :full_name
      t.string :nickname
      t.integer :rating
      t.timestamps
    end

    create_table :excursions do |t|
      t.string :name
      t.date :start_date
      t.text :description
      t.text :short_description
      t.belongs_to :user
      t.timestamps
    end
  end

  def self.down
    drop_table :excursions
    drop_table :users
  end
end
