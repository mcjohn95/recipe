class MealRecipesController < ApplicationController
  before_action :set_meal_recipe, only: [:show, :edit, :update, :destroy]
 before_action :authorise, :only => [:new, :create, :edit, :update, :delete]
  # GET /meal_recipes
  # GET /meal_recipes.json
  def index
    @meal_recipes = MealRecipe.all
  end

  # GET /meal_recipes/1
  # GET /meal_recipes/1.json
  def show
  end

  # GET /meal_recipes/new
  def new
    @meal_recipe = MealRecipe.new
  end

  # GET /meal_recipes/1/edit
  def edit
  end

  # POST /meal_recipes
  # POST /meal_recipes.json
  def create
    @meal_recipe = MealRecipe.new(meal_recipe_params)

    respond_to do |format|
      if @meal_recipe.save
        format.html { redirect_to @meal_recipe, notice: 'Meal recipe was successfully created.' }
        format.json { render :show, status: :created, location: @meal_recipe }
      else
        format.html { render :new }
        format.json { render json: @meal_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_recipes/1
  # PATCH/PUT /meal_recipes/1.json
  def update
    respond_to do |format|
      if @meal_recipe.update(meal_recipe_params)
        format.html { redirect_to @meal_recipe, notice: 'Meal recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_recipe }
      else
        format.html { render :edit }
        format.json { render json: @meal_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_recipes/1
  # DELETE /meal_recipes/1.json
  def destroy
    @meal_recipe.destroy
    respond_to do |format|
      format.html { redirect_to meal_recipes_url, notice: 'Meal recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_recipe
      @meal_recipe = MealRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_recipe_params
      params.require(:meal_recipe).permit(:mealType, :image, :instructions, :user_id, :dateOfUpload, :recipeName, :servingQuantity, :difficultyLevel)
    end
end
