class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20, message: "Name can not be empty, must have at least 2 characters."}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX, message: "Must enter valid email address."}
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 10, less_than: 150, only_integer: true, message:}
end