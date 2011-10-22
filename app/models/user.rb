class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :puzzles
  has_many :comments
  has_many :puzzle_likes
  
  def liked_puzzle?(puzzle)
    if (PuzzleLike.where(:user_id => self.id, :puzzle_id => puzzle.id).count > 0)
      true
      
    else
      false
    end
  end
  
end
