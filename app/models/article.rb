class Article < ApplicationRecord
  has_many :article_tags
  has_many :tags, through: :article_tags
  has_many :comments, dependent: :destroy
  belongs_to :user
end
