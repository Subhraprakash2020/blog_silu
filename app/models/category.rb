class Category < ApplicationRecord
    validates :name, presence: true
    has_and_belongs_to_many :posts
    # has_many :posts

end
