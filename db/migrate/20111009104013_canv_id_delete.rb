class CanvIdDelete < ActiveRecord::Migration
  def up
    remove_column :puzzles, :canvas_id
  end

  def down
  end
end
