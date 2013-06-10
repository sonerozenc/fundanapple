class AddPaidforToGrids < ActiveRecord::Migration
  def change
    add_column :grids, :Paidfor, :boolean
  end
end
