class Restaurant < ApplicationRecord

  has_many :recommendations
  has_many :wishlists

end
