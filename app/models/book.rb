class Book < ApplicationRecord
  belongs_to :author

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


