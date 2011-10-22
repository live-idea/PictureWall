class Category < ActiveRecord::Base
  has_many :puzzle_tables
  validates :name, :status,  :presence=>true
  has_many :puzzles, :through => :puzzle_tables
end
