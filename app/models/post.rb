class Post < ApplicationRecord
  validates :title, presence:true
  validates :content, presence:true, length: { maximum: 500 }

  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
end
