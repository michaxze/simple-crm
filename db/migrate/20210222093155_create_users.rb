class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :role_id
      t.integer :person_id

      t.timestamps
    end

    add_index :roles, :username
  end
end
