class AddRefToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_reference :recommendations, :user, null: false, foreign_key: true
    add_reference :recommendations, :restaurant, null: false, foreign_key: true
  end
end
