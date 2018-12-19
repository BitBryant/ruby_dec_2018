class Post < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  has_many :messages
  validates :content, :title, presence: true, length: {minimum: 2}
end
