class User < ApplicationRecord
  validates :email, blacklisted_email: true
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
end
