class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :neighborhood
  has_one :listing, through: :neighborhood
  # has_many :favorites
  #   where favorites is a join between two users
  # check out this migration https://github.com/ga-dc/garnet/blob/9318a0d9257e6e01c9373cc77a97eab58a06d766/db/migrate/20150928193445_create_observations.rb#L6-L7
  # you can name the column anything, like `favoriter` and `favoritee` 
  # or `user1` and `user2`
  # re: the above URL, `membership` is the name of the model
  # Let's find a time to pair on this next week
end
