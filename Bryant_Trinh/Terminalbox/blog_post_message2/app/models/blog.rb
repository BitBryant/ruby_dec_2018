class Blog < ApplicationRecord
	has_many :owners
	has_many :posts
	has_many :users, through: :owners
	validates :name, :description, presence: true, length: {minimum: 2}
end