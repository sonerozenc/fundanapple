class AddUserToGrid < ActiveRecord::Migration
  def change
    add_column :grids, :user, :references
  end
end
