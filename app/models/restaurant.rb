class Restaurant < ApplicationRecord
    has_many :recommendations, dependent: :destroy
    has_many :wishlists
end
