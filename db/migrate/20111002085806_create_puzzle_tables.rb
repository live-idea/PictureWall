class CreatePuzzleTables < ActiveRecord::Migration
  def change
    create_table :puzzle_tables do |t|
      t.integer :category_id
      t.string :name
      t.decimal :rate
      t.text :description
      t.timestamps
    end
  end
end
