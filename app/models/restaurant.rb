class Restaurant < ApplicationRecord

  has_many :recommendations
  has_many :wishlists

  
  include PgSearch::Model
  pg_search_scope :search_by_location,
  against: [ :location ],
  using: {
    tsearch: { prefix: true } 
  }

end
