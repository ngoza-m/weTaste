class AddPhoneNumberAndDescriptionToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :phone_number, :string
    add_column :restaurants, :description, :text
  end
end
