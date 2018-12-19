class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	validates :email, :presence => true, :uniqueness => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }#, email: true

end
