class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    if ActiveRecord::Base.connection.table_exists? :participants
      drop_table :participants

    create_table :participants do |t|
      t.string :full_name
      t.string :nickname
      t.integer :rating
      t.timestamps
    end

    if  ActiveRecord::Base.connection.table_exists? :excursions
      drop_table :excursions

    create_table :excursions do |t|
      t.string :name
      t.date :start_date
      t.text :description
      t.text :short_description
      t.belongs_to :participant
      t.timestamps
    end
  end
end
