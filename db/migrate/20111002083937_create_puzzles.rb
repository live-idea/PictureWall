class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.integer   :user_id
      t.integer   :canvas_id
      t.integer   :coord_x
      t.integer   :coord_y
      t.string    :puzzle_file_name
      t.string    :puzzle_content_type
      t.integer   :puzzle_file_size
      t.datetime  :puzzle_updated_at
      t.timestamps
    end
  end
end
