class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence:true
  before_save :downcase_fields
  def downcase_fields
  	self.email.downcase!
  end
end
