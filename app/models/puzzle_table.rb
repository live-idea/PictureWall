class PuzzleTable < ActiveRecord::Base
   has_many   :comments, :as => :commentable
   has_many   :puzzles
   belongs_to :category
   validates :name, :presence => true
   validates :width, :presence => true
   validates :height, :presence => true
  
     
end
