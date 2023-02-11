class User < ApplicationRecord
  # password encryption
  has_secure_password

  # Model associations
  has_many :todos, foreign_key: :created_by

  # not null
  validates_presence_of :name, :email, :password_digest
end
