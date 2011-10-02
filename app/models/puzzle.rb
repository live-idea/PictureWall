class Puzzle < ActiveRecord::Base
  has_many   :comments, :as => :commentable
  belongs_to :user
  belongs_to :puzzle_table
end
