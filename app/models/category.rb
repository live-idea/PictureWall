class Category < ActiveRecord::Base
  has_many :puzzle_tables
  validates :name, :status,  :presence=>true
  
end
