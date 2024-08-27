class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.text :content
      t.string :tags
      t.string :photos

      t.timestamps
    end
  end
end
