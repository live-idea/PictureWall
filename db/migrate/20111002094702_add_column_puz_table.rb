class AddColumnPuzTable < ActiveRecord::Migration
  def up
    add_column :puzzle_tables, :width, :integer
    add_column :puzzle_tables, :height, :integer
  end

  def down
  end
end
