class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :meal_recipe_id
      t.integer :stars

      t.timestamps
    end
  end
end
