class PuzzleTable < ActiveRecord::Base
   has_many   :comments, :as => :commentable
   has_many   :puzzles
   belongs_to :category
   
end
