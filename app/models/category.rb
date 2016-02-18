class Category < ActiveRecord::Base
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, in: 3..25
end