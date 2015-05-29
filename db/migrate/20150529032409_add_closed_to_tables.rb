class AddClosedToTables < ActiveRecord::Migration
  def change
    add_column :tables, :closed, :boolean
  end
end
