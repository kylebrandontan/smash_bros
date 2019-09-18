class User < ApplicationRecord
  before_save {self.email = email.downcase}
  before_save {self.username = username.downcase}
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  has_secure_password
end
