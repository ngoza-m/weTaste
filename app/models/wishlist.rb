class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, optional: true
end
