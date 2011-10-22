class PuzzleLikes < ActiveRecord::Migration
  def change
    create_table :puzzle_likes do |t|
      t.string :user_id
      t.string :puzzle_id

    
    end
  end
end
