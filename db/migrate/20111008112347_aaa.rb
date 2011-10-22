class Aaa < ActiveRecord::Migration
  def up
    remove_column :puzzle_tables , :puzzle_id
    add_column :puzzles , :puzzle_table_id , :integer
  end

  def down
  end
end
