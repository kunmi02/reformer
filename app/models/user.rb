# User validations
class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 20 }
  validates :email, presence: true, length: { minimum: 20 }
  validates :password, presence: true, length: { minimum: 20 }
end
