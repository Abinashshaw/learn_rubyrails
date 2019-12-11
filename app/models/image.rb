class Image < ApplicationRecord
  has_one_attached :picture

  validates :name, presence: true, uniqueness: true
  validates :picture, presence: true
end
