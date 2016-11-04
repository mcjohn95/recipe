class MealRecipe < ActiveRecord::Base
	belongs_to :user
	
	has_many :reviews,:dependent=>  :destroy
	has_many :specialRecipes,dependent:  :destroy
	validates :recipeName, presence: true
	validates :recipeName, uniqueness: true
	validates :difficultyLevel, presence: true
	 def average_stars
		reviews.average(:stars)
	end
end
