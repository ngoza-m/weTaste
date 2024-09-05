class AddFoodPreferencesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :food_preferences, :string
  end
end
