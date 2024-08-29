class Recommendation < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user

    has_many_attached :photos

end
