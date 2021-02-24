class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :code
      t.string :desc

      t.timestamps
    end

    add_index :roles, :code
  end
end
