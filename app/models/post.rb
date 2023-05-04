class Post < ApplicationRecord
  validates :title, presence:true
  validates :content, presence:true, length: { maximum: 500 }

  has_and_belongs_to_many :categories
  # belongs_to :category

end
