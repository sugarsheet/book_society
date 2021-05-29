class User < ApplicationRecord
  acts_as_favoritor

  has_many :reviews
  has_many :books, through: :reviews
  has_many :recommended_books
  has_many :likes, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
