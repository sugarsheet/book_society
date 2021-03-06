class User < ApplicationRecord
  acts_as_favoritor

  has_many :reviews
  has_many :books, through: :reviews
  has_many :recommended_books
  has_many :likes, dependent: :destroy

  has_one_attached :photo



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def photo_thumbnail
    photo.variant(resize: `60x60!`).processed
  end
end
