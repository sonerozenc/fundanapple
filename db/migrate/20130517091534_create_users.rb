class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :salt
      t.string :password
      t.string :password_confirmation
      t.string :fish
      t.boolean :is_project_starter
      t.references :project
      t.references :artwork

      t.timestamps
    end
    add_index :users, :project_id
    add_index :users, :artwork_id
  end
end
