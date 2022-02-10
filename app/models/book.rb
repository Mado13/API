class Book < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_author,
                  associated_against: {
                    author: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  belongs_to :author
end
