class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :dietaryNeed

      t.timestamps
    end
  end
end
