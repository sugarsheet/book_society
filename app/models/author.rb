class Author < ApplicationRecord
  has_many :books

  has_one_attached :photo

  def name
    "#{first_name} #{last_name}"
  end

end
