class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :top, :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
end
