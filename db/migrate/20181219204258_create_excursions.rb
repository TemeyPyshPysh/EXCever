class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    dev_db = true

    if ActiveRecord::Base.connection.table_exists? :participants and dev_db
      drop_table :participants
    end

    create_table :participants do |t|
      t.string :full_name
      t.string :nickname
      t.integer :rating
      t.belongs_to :excursion
      t.timestamps
    end

    if  ActiveRecord::Base.connection.table_exists? :excursions and dev_db
      drop_table :excursions
    end

    create_table :excursions do |t|
      t.string :name
      t.date :start_date
      t.text :description
      t.text :short_description
      t.belongs_to :participant
      t.timestamps
    end

    add_index :participants, :nickname, unique: true
  end
end
