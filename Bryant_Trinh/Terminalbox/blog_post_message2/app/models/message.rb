class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :author, :message, presence: true, length: {minimum: 2}
end
