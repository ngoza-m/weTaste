
class Restaurant < ApplicationRecord
  has_many :recommendations, dependent: :destroy
  has_many :wishlists, dependent: :destroy
  has_many :tags, through: :recommendations

  include PgSearch::Model
  pg_search_scope :search_by_location,
                  against: %i[city location],
                  using: {
                    tsearch: { prefix: true }
                  }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
