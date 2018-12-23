class CreateExcursions < ActiveRecord::Migration[5.2]
  def change
    dev_db = false

    if ActiveRecord::Base.connection.table_exists? :participants and dev_db
      drop_table :participants
    end

    create_table :participants do |t|
      t.string :full_name, null: false
      t.string :nickname, null: false
      t.integer :rating, default: 0
      t.string :photo, default: "", null: false
      t.timestamps
    end

    if  ActiveRecord::Base.connection.table_exists? :excursions and dev_db
      drop_table :excursions
    end

    create_table :excursions do |t|
      t.string :name, null: false, unique: true
      t.date :start_date, null: false
      t.text :description
      t.string :short_description, null: false
      t.belongs_to :guide, index: true
      t.string :photo, default: "", null: false
      t.timestamps
    end

    if  ActiveRecord::Base.connection.table_exists? :tripper_excurs and dev_db
      drop_table :tripper_excurs
    end

    create_table :tripper_excurs do |t|
      t.belongs_to :excursion, null: false, index: true
      t.belongs_to :tripper, null: false, index: true
    end

    add_foreign_key :excursions, :participants, column: :guide_id
    add_foreign_key :tripper_excurs, :participants, column: :tripper_id
    add_foreign_key :tripper_excurs, :excursions, column: :excursion_id
    add_index :participants, :nickname, unique: true
  end
end
