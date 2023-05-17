class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories

  belongs_to :user

  scope :published, -> { where(published: true) }

  # def self.published
  #   where(published: true)
  # end

end
