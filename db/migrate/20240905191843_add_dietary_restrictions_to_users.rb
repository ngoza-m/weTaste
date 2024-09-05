class AddDietaryRestrictionsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :dietary_restrictions, :string
  end
end
