class Book < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_author,
                  associated_against: {
                    author: [:name]
                  }
  belongs_to :author
end
