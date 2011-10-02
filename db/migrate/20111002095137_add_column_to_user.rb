class AddColumnToUser < ActiveRecord::Migration
  def up
    add_column :users,:admin, :boolean 
  end
  def down
    
  end
end
