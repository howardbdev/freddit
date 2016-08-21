class User < ActiveRecord::Base
  has_many :conversations
  has_many :posts

  has_secure_password

  validates_presence_of :username
  validates_presence_of :email

  def number_of_posts
    self.posts.all.size
  end

end