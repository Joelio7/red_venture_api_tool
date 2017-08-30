class User < ApplicationRecord
  has_secure_password
  has_many :visits
  validates_presence_of :first_name, :email, :password_digest
end
