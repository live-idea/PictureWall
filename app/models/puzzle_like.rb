class PuzzleLike < ActiveRecord::Base
 belongs_to :user
 belongs_to :puzzle
end