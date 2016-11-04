class CreateMealRecipes < ActiveRecord::Migration
  def change
    create_table :meal_recipes do |t|
      t.string :mealType
      t.string :image
      t.text :instructions
      t.integer :user_id
      t.date :dateOfUpload
      t.string :recipeName
      t.integer :servingQuantity
      t.string :difficultyLevel

      t.timestamps
    end
  end
end
