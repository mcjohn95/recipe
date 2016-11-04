class CreateSpecialRecipes < ActiveRecord::Migration
  def change
    create_table :special_recipes do |t|
      t.integer :Diet_id
      t.integer :meal_recipe_id

      t.timestamps
    end
  end
end
