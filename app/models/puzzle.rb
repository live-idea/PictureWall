class Puzzle < ActiveRecord::Base
  has_many   :puzzle_likes
  has_many   :comments, :as => :commentable
  belongs_to :user
  belongs_to :puzzle_table
  has_attached_file :image , :styles => {:thumb => '100x100#' , :big => '800x800>'}
  scope :rnd10, order("RAND()") 
  scope :limit10, limit(10)
  scope :rnd3, order("RAND()") 
  scope :limit3, limit(3)
  validates_attachment_presence :image
end
