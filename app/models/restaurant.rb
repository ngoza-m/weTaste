class Restaurant < ApplicationRecord
  has_many :recommendations, dependent: :destroy
  has_many :wishlists, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_location,
                  against: %i[city location],
                  using: {
                    tsearch: { prefix: true }
                  }
end
