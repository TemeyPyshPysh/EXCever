class AddRoles < ActiveRecord::Migration[5.2]
  def up
    add_column :participants, :role, :string
  end

  def down
    remove_column :participants, :role
  end
end
