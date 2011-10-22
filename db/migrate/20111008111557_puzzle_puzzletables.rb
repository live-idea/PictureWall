class PuzzlePuzzletables < ActiveRecord::Migration
  def up
     add_column :puzzle_tables, :puzzle_id, :integer
  end

  def down
  end
end
