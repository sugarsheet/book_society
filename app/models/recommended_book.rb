class RecommendedBook < ApplicationRecord
  belongs_to :book
  belongs_to :user

end
