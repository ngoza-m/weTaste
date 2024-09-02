class Recommendation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  has_many_attached :photos
  acts_as_taggable_on :tags

end
