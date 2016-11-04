class ReviewsController < ApplicationController
	before_filter :authorise
	
def create 
		@meal_recipe = MealRecipe.find params[:meal_recipe_id]
		@review = @meal_recipe.reviews.new(review_params)
		@review.user_id = @current_user.id
		@review.save 
		
		respond_to do |format|
			format.html {redirect_to @meal_recipe}
		end 
	end 
	
	private 
	def review_params
		params.require(:review).permit(:content, :meal_recipe_id, :user_id, :stars)
	end 
end
