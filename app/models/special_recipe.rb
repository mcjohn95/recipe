class SpecialRecipe < ActiveRecord::Base
		belongs_to :diet
		belongs_to :mealRecipe
end
