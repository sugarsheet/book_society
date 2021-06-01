class Book < ApplicationRecord
  acts_as_favoritable

  belongs_to :author
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_many :recommended_books, dependent: :destroy
  has_one_attached :photo
  has_many :likes, dependent: :destroy
  validates :isbn, uniqueness: true
  validates :title, uniqueness: true


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :description, :isbn],
    associated_against: {
      author: [ :first_name, :last_name, :bio]
    },
    using: {
      tsearch: { prefix: true }
    }


end
